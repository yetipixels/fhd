"use client";

import React, { useState } from "react";
import Image from "next/image";
import { UploadCloud, X, ArrowUp, ArrowDown, Image as ImageIcon, Plus } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { toast } from "sonner";

interface CloudinaryUploaderProps {
  images: string[];
  onChange: (images: string[]) => void;
  maxFiles?: number;
}

export function CloudinaryUploader({
  images,
  onChange,
  maxFiles = 6,
}: CloudinaryUploaderProps) {
  const [uploading, setUploading] = useState(false);
  const [progress, setProgress] = useState(0);
  const [manualUrl, setManualUrl] = useState("");
  const [showManualInput, setShowManualInput] = useState(false);

  const cloudName = process.env.NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME;
  const uploadPreset = process.env.NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET;

  const handleFileUpload = async (files: FileList | null) => {
    if (!files || files.length === 0) return;

    if (!cloudName || !uploadPreset || cloudName.includes("your_cloud_name")) {
      toast.error(
        "Cloudinary environment variables not configured. You can still paste direct image URLs below!"
      );
      setShowManualInput(true);
      return;
    }

    setUploading(true);
    setProgress(10);

    const uploadedUrls: string[] = [];

    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const formData = new FormData();
      formData.append("file", file);
      formData.append("upload_preset", uploadPreset);

      try {
        const response = await fetch(
          `https://api.cloudinary.com/v1_1/${cloudName}/image/upload`,
          {
            method: "POST",
            body: formData,
          }
        );

        const data = await response.json();
        if (data.secure_url) {
          uploadedUrls.push(data.secure_url);
        } else {
          console.error("Cloudinary error response:", data);
          toast.error(`Failed to upload ${file.name}: ${data.error?.message || "Error"}`);
        }
      } catch (err) {
        console.error("Cloudinary upload failed:", err);
        toast.error(`Upload error for ${file.name}`);
      } finally {
        setProgress(Math.round(((i + 1) / files.length) * 100));
      }
    }

    if (uploadedUrls.length > 0) {
      onChange([...images, ...uploadedUrls].slice(0, maxFiles));
      toast.success(`Successfully uploaded ${uploadedUrls.length} image(s)!`);
    }

    setUploading(false);
    setProgress(0);
  };

  const handleAddManualUrl = () => {
    if (!manualUrl.trim()) return;
    onChange([...images, manualUrl.trim()].slice(0, maxFiles));
    setManualUrl("");
    toast.success("Image URL added");
  };

  const handleRemoveImage = (index: number) => {
    const updated = images.filter((_, idx) => idx !== index);
    onChange(updated);
  };

  const moveImage = (index: number, direction: "up" | "down") => {
    const newIndex = direction === "up" ? index - 1 : index + 1;
    if (newIndex < 0 || newIndex >= images.length) return;
    const updated = [...images];
    const temp = updated[index];
    updated[index] = updated[newIndex];
    updated[newIndex] = temp;
    onChange(updated);
  };

  return (
    <div className="space-y-4">
      {/* Drag & Drop Box */}
      <div className="relative border-2 border-dashed border-fhd-border rounded-lg p-6 bg-fhd-cream/20 hover:bg-fhd-cream/40 transition-colors text-center">
        <input
          type="file"
          accept="image/*"
          multiple
          disabled={uploading || images.length >= maxFiles}
          onChange={(e) => handleFileUpload(e.target.files)}
          className="absolute inset-0 w-full h-full opacity-0 cursor-pointer disabled:cursor-not-allowed"
        />
        <div className="flex flex-col items-center justify-center space-y-2 pointer-events-none">
          <div className="w-12 h-12 rounded-full bg-white flex items-center justify-center text-fhd-sage shadow-xs border border-fhd-border">
            <UploadCloud className="w-6 h-6" />
          </div>
          <div>
            <p className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
              {uploading
                ? `Uploading to Cloudinary (${progress}%)...`
                : "Click or drag & drop product images"}
            </p>
            <p className="text-[11px] text-stone-500 mt-0.5">
              PNG, JPG, WEBP up to 10MB (Max {maxFiles} images)
            </p>
          </div>
        </div>
      </div>

      {/* Uploading progress bar */}
      {uploading && (
        <div className="w-full bg-fhd-border h-2 rounded-full overflow-hidden">
          <div
            className="bg-fhd-sage h-full transition-all duration-300"
            style={{ width: `${progress}%` }}
          />
        </div>
      )}

      {/* Manual URL Input toggle */}
      <div className="flex items-center justify-between text-xs">
        <button
          type="button"
          onClick={() => setShowManualInput(!showManualInput)}
          className="text-fhd-sage hover:underline font-medium"
        >
          {showManualInput ? "Hide manual URL input" : "+ Add image by external URL"}
        </button>
        <span className="text-stone-400">
          {images.length} / {maxFiles} images
        </span>
      </div>

      {showManualInput && (
        <div className="flex items-center space-x-2 pt-1">
          <Input
            placeholder="https://images.unsplash.com/... or https://res.cloudinary.com/..."
            value={manualUrl}
            onChange={(e) => setManualUrl(e.target.value)}
            className="text-xs h-10"
          />
          <Button
            type="button"
            variant="secondary"
            size="sm"
            onClick={handleAddManualUrl}
            className="h-10 text-xs"
          >
            Add URL
          </Button>
        </div>
      )}

      {/* Uploaded Images Preview Grid */}
      {images.length > 0 && (
        <div className="grid grid-cols-2 sm:grid-cols-4 md:grid-cols-6 gap-3 pt-2">
          {images.map((url, idx) => (
            <div
              key={idx}
              className="group relative aspect-square rounded-md overflow-hidden border border-fhd-border bg-fhd-cream shadow-xs"
            >
              <Image
                src={url}
                alt={`Product image ${idx + 1}`}
                fill
                className="object-cover"
              />
              {idx === 0 && (
                <span className="absolute top-1 left-1 bg-fhd-dark text-white text-[9px] px-1.5 py-0.5 rounded font-mono font-bold z-10">
                  MAIN
                </span>
              )}

              {/* Action overlay */}
              <div className="absolute inset-0 bg-stone-950/60 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center space-x-1 p-1">
                {idx > 0 && (
                  <button
                    type="button"
                    onClick={() => moveImage(idx, "up")}
                    className="p-1 rounded bg-white/80 hover:bg-white text-stone-900"
                    title="Move left/up"
                  >
                    <ArrowUp className="w-3.5 h-3.5 -rotate-90" />
                  </button>
                )}
                {idx < images.length - 1 && (
                  <button
                    type="button"
                    onClick={() => moveImage(idx, "down")}
                    className="p-1 rounded bg-white/80 hover:bg-white text-stone-900"
                    title="Move right/down"
                  >
                    <ArrowDown className="w-3.5 h-3.5 -rotate-90" />
                  </button>
                )}
                <button
                  type="button"
                  onClick={() => handleRemoveImage(idx)}
                  className="p-1 rounded bg-red-600 hover:bg-red-700 text-white"
                  title="Remove image"
                >
                  <X className="w-3.5 h-3.5" />
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

