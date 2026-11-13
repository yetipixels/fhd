import os
import time
import json
import urllib.request
import urllib.error
from concurrent.futures import ThreadPoolExecutor, as_completed

MAPPING_FILE = "cloudinary_lighting_mapping.json"
IMG_DIR = "public/assets/images/products/lighting"

# Load existing mapping if present
mapping = {}
if os.path.exists(MAPPING_FILE):
    try:
        with open(MAPPING_FILE, "r") as f:
            mapping = json.load(f)
    except Exception:
        mapping = {}

# Known previously uploaded images
mapping["fhd-2526.jpeg"] = "https://res.cloudinary.com/dfknq2hab/image/upload/v1794598335/fairhomedecor/lighting/ladyiotpzxpwi3toukqr.jpg"
mapping["fhd-2321.jpeg"] = "https://res.cloudinary.com/dfknq2hab/image/upload/v1794598519/fairhomedecor/lighting/hh0gu7opab9tkt4aoytj.jpg"
mapping["rkil-20001.png"] = "https://res.cloudinary.com/dfknq2hab/image/upload/v1794598521/fairhomedecor/lighting/lzftuz1q7nkgsfjysutz.png"

def upload_single(filename):
    file_path = os.path.join(IMG_DIR, filename)
    url = "https://api.cloudinary.com/v1_1/dfknq2hab/image/upload"
    
    # Retry up to 3 times
    for attempt in range(3):
        boundary = "----WebKitFormBoundary" + str(time.time()).replace(".", "")
        with open(file_path, "rb") as f:
            file_bytes = f.read()

        mime = "image/jpeg" if filename.lower().endswith((".jpg", ".jpeg")) else "image/png"
        body = bytearray()
        body.extend(f'--{boundary}\r\nContent-Disposition: form-data; name="upload_preset"\r\n\r\nfairhomedecor\r\n'.encode('utf-8'))
        body.extend(f'--{boundary}\r\nContent-Disposition: form-data; name="folder"\r\n\r\nfairhomedecor/lighting\r\n'.encode('utf-8'))
        body.extend(f'--{boundary}\r\nContent-Disposition: form-data; name="file"; filename="{filename}"\r\nContent-Type: {mime}\r\n\r\n'.encode('utf-8'))
        body.extend(file_bytes)
        body.extend(f'\r\n--{boundary}--\r\n'.encode('utf-8'))

        req = urllib.request.Request(url, data=body)
        req.add_header('Content-Type', f'multipart/form-data; boundary={boundary}')
        try:
            with urllib.request.urlopen(req, timeout=45) as resp:
                data = json.loads(resp.read().decode('utf-8'))
                sec_url = data.get("secure_url")
                if sec_url:
                    return filename, sec_url
        except Exception as e:
            if attempt == 2:
                print(f"Failed to upload {filename}: {e}")
                return filename, None
            time.sleep(1.5)
    return filename, None

def main():
    all_files = [f for f in os.listdir(IMG_DIR) if not f.startswith(".")]
    to_upload = [f for f in all_files if f not in mapping or not mapping[f]]
    print(f"Total files: {len(all_files)}, Already mapped: {len(mapping)}, To upload: {len(to_upload)}")

    if not to_upload:
        print("All files already uploaded.")
        return

    completed = 0
    with ThreadPoolExecutor(max_workers=6) as executor:
        futures = {executor.submit(upload_single, f): f for f in to_upload}
        for future in as_completed(futures):
            filename, sec_url = future.result()
            if sec_url:
                mapping[filename] = sec_url
                completed += 1
                if completed % 10 == 0 or completed == len(to_upload):
                    print(f"Progress: {completed}/{len(to_upload)} uploaded.")
                    with open(MAPPING_FILE, "w") as mf:
                        json.dump(mapping, mf, indent=2)

    with open(MAPPING_FILE, "w") as mf:
        json.dump(mapping, mf, indent=2)
    print(f"Finished! Total uploaded mappings in {MAPPING_FILE}: {len(mapping)}")

if __name__ == "__main__":
    main()

