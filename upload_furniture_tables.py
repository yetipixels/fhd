import os
import time
import json
import urllib.request
import urllib.error
from concurrent.futures import ThreadPoolExecutor, as_completed

MAPPING_FILE = "cloudinary_furniture_mapping.json"
DIRS = [
    ("public/assets/images/products/c-tables", "fairhomedecor/c-tables"),
    ("public/assets/images/products/console-tables", "fairhomedecor/console-tables"),
]

mapping = {}
if os.path.exists(MAPPING_FILE):
    try:
        with open(MAPPING_FILE, "r") as f:
            mapping = json.load(f)
    except Exception:
        mapping = {}

def upload_file(args):
    file_path, folder = args
    filename = os.path.basename(file_path)
    if filename in mapping and mapping[filename]:
        return filename, mapping[filename]

    url = "https://api.cloudinary.com/v1_1/dfknq2hab/image/upload"
    for attempt in range(3):
        boundary = "----WebKitFormBoundary" + str(time.time()).replace(".", "")
        with open(file_path, "rb") as f:
            file_bytes = f.read()

        mime = "image/jpeg" if filename.lower().endswith((".jpg", ".jpeg")) else "image/png"
        body = bytearray()
        body.extend(f'--{boundary}\r\nContent-Disposition: form-data; name="upload_preset"\r\n\r\nfairhomedecor\r\n'.encode('utf-8'))
        body.extend(f'--{boundary}\r\nContent-Disposition: form-data; name="folder"\r\n\r\n{folder}\r\n'.encode('utf-8'))
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
    tasks = []
    for dir_path, folder in DIRS:
        if os.path.exists(dir_path):
            for fname in os.listdir(dir_path):
                if not fname.startswith(".") and (fname.endswith(".jpeg") or fname.endswith(".png") or fname.endswith(".jpg")):
                    full_p = os.path.join(dir_path, fname)
                    tasks.append((full_p, folder))

    to_upload = [t for t in tasks if os.path.basename(t[0]) not in mapping or not mapping[os.path.basename(t[0])]]
    print(f"Total files: {len(tasks)}, Already mapped: {len(mapping)}, To upload: {len(to_upload)}")

    if not to_upload:
        print("All files already uploaded.")
        return

    completed = 0
    with ThreadPoolExecutor(max_workers=6) as executor:
        futures = {executor.submit(upload_file, t): t for t in to_upload}
        for future in as_completed(futures):
            filename, sec_url = future.result()
            if sec_url:
                mapping[filename] = sec_url
                completed += 1
                if completed % 5 == 0 or completed == len(to_upload):
                    print(f"Progress: {completed}/{len(to_upload)} uploaded.")
                    with open(MAPPING_FILE, "w") as mf:
                        json.dump(mapping, mf, indent=2)

    with open(MAPPING_FILE, "w") as mf:
        json.dump(mapping, mf, indent=2)
    print(f"Finished! Total uploaded mappings in {MAPPING_FILE}: {len(mapping)}")

if __name__ == "__main__":
    main()
