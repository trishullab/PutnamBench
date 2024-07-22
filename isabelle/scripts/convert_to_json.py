import os
import json

def read_thy_files_in_directory(directory_path, output_file):
    all_probs = {}
    with open('../informal/putnam.json', 'r', encoding='utf-8') as file:
        data = json.load(file)
        for prob in data:
            all_probs[prob['problem_name']] = prob['informal_statement']

    with open(output_file, 'w', encoding='utf-8') as jsonl_file:
        # Iterate over all files in the directory
        for filename in os.listdir(directory_path):
            file_path = os.path.join(directory_path, filename)
            
             # Check if it's a file and has a .txt extension
            if os.path.isfile(file_path) and filename.endswith('_filled.thy'):
                with open(file_path, 'r', encoding='utf-8') as file:
                    file_contents = file.read()
                    name = filename[:filename.find('_filled.thy')]
                    if all_probs.get(name) == None:
                        print(name)
                        inf = ""
                    else:
                        inf = all_probs.get(name)
                    file_data = ({'problem_name': name, 'informal_statement': inf, 'informal_proof': "",
                                    'formal_statement': file_contents[file_contents.find("begin") + 5:file_contents.find("sorry")].strip()})
                    # Write the JSON object to the JSONL file
                    jsonl_file.write(json.dumps(file_data) + '\n')

# Example usage
directory_path = './'
output_file = 'isabelle_full.jsonl'
read_thy_files_in_directory(directory_path, output_file)