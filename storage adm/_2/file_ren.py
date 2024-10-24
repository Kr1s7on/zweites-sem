import os

def rename_files_to_lowercase():
    script_directory = os.path.dirname(os.path.abspath(__file__))
    print(f"Script directory: {script_directory}")
    
    for filename in os.listdir(script_directory):
        print(f"Processing file: {filename}")
        
        if os.path.isfile(os.path.join(script_directory, filename)) and filename.lower().endswith('.pdf'):
            new_filename = filename.lower()
            print(f"Renaming '{filename}' to '{new_filename}'")
            
            os.rename(
                os.path.join(script_directory, filename),
                os.path.join(script_directory, new_filename)
            )
        else:
            print(f"Skipping file: {filename}")

if __name__ == "__main__":
    rename_files_to_lowercase()