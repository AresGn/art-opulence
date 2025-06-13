import os
import cloudinary
import cloudinary.uploader
import json

# === CONFIGURATION CLOUDINARY ===
cloudinary.config(
    cloud_name="",
    api_key="",
    api_secret=""
)

# === Dossier local contenant les images ===
base_folder = r"C:\Users\Arès GNIMAGNON\Pictures\RAMEL_Projet" # par ex: "./RAMEL_Projet"

# === Résultat JSON structuré ===
result_json = {}

# === Parcours des dossiers ===
for folder in os.listdir(base_folder):
    folder_path = os.path.join(base_folder, folder)
    if os.path.isdir(folder_path):
        result_json[folder] = []  # init liste d'urls
        for file in os.listdir(folder_path):
            file_path = os.path.join(folder_path, file)
            if file.lower().endswith((".png", ".jpg", ".jpeg", ".webp")):
                print(f"Upload de {file_path} dans Cloudinary/{folder}")
                try:
                    upload_result = cloudinary.uploader.upload(
                        file_path,
                        folder=f"RAMEL_Projet/{folder}",  # crée un dossier distant
                        use_filename=True,
                        unique_filename=False,
                        overwrite=True
                    )
                    result_json[folder].append({
                        "file": file,
                        "url": upload_result["secure_url"]
                    })
                except Exception as e:
                    print(f"Erreur avec {file}: {e}")

# === Sauvegarde JSON localement ===
with open("cloudinary_links.json", "w", encoding="utf-8") as f:
    json.dump(result_json, f, ensure_ascii=False, indent=4)

print("\n✅ Upload terminé. Liens enregistrés dans 'cloudinary_links.json'")
