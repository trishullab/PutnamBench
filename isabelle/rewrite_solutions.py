import os
import shutil

def copy_files_in_directory(directory):
    try:
        # Check if the directory exists
        if not os.path.exists(directory):
            print(f"The directory {directory} does not exist.")
            return
        
        # Iterate through each file in the directory
        for filename in os.listdir(directory):
            file_path = os.path.join(directory, filename)
            
            # Check if it is a file
            if os.path.isfile(file_path):
                # Construct the new file path
                base, extension = os.path.splitext(filename)

                if not extension == '.thy':
                    continue
                new_filename = f"{base}_copy{extension}"
                new_file_path = os.path.join(directory, new_filename)
                
                with open(file_path, 'r') as file:
                    conts = file.read()

                    defn = conts.find(f"definition {base}_solution")
                    thm = conts.find(f"theorem {base}")
                    if defn > 0:

                        sol_start = conts[defn:].find("(*")
                        sol_end = conts[defn:].find("*)")

                        thm = conts[defn:][sol_end+3:]
                        thm = thm.replace(f"{base}_solution", "(" + conts[defn:][sol_start+2:sol_end] + ")")

                        conts = conts[:defn] + thm


                    # Copy the file
                    with open(new_file_path, 'w') as new_file:
                        new_file.write(conts)

    except Exception as e:
        print(f"An error occurred: {e}")

# Usage
directory_path = "./"
copy_files_in_directory(directory_path)