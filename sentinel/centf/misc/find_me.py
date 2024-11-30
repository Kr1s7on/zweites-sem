import zipfile
import re
import os

def extract_zip(zip_path, extract_to):
    with zipfile.ZipFile(zip_path, 'r') as zip_ref:
        zip_ref.extractall(extract_to)

def search_flag(directory):
    flag_pattern = re.compile(r'CTF\{.*?\}')
    for root, _, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path, 'r', errors='ignore') as f:
                content = f.read()
                match = flag_pattern.search(content)
                if match:
                    print(f"Flag found in {file_path}: {match.group(0)}")
                    return match.group(0)
    print("Flag not found")
    return None

# Example usage
zip_path = 'path_to_your_zip_file.zip'
extract_to = 'extracted_files'
extract_zip(zip_path, extract_to)
search_flag(extract_to)