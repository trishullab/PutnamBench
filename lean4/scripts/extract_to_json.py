import json
import re
import os
import csv

lean_regex = r"((abbrev[\s|\S]+?)*theorem ([\S]+)[\s|\S+]+?sorry)"
lean_regex_match = re.compile(lean_regex, re.MULTILINE)
coq_regex = r"(Section ([\s|\S]*?)End ([\S]+?)\.)"
coq_regex_match = re.compile(coq_regex, re.MULTILINE)
isabelle_regex = r"theory (\w+) imports"
isabelle_regex_match = re.compile(isabelle_regex, re.MULTILINE)

def extract_lean(filename):
    with open(filename, "r") as f:
        text = f.read()
    matches = lean_regex_match.findall(text)
    theorems = []
    for match in matches:
        thm_name = match[2]
        full_thm = match[0]
        theorems.append({"name": thm_name, "lean4_statement": full_thm})
    return theorems

def extract_informal(filename, theorems = []):
    map_theorem_names = {thm["name"]: thm for thm in theorems}
    with open(filename, "r") as f:
        theorems_json = json.load(f)
    for thm in theorems_json:
        thm_name = thm["problem_name"]
        if thm_name in map_theorem_names:
            map_theorem_names[thm_name]["informal_statement"] = thm["informal_statement"]
            if "informal_solution" not in thm or thm["informal_solution"] == "None.":
                thm["informal_solution"] = "null"
            map_theorem_names[thm_name]["informal_solution"] = thm["informal_solution"]
            map_theorem_names[thm_name]["tags"] = thm["tags"]
    return theorems

def extract_coq(filename, theorems = []):
    map_theorem_names = {thm["name"]: thm for thm in theorems}
    with open(filename, "r") as f:
        text = f.read()
    matches = coq_regex_match.findall(text)
    for match in matches:
        thm_name = match[2]
        full_thm = match[0]
        if thm_name in map_theorem_names:
            map_theorem_names[thm_name]["coq_statement"] = full_thm
        else:
            theorems.append({
                "name": thm_name,
                "lean4_statement": "null",
                "informal_statement": "null",
                "informal_solution": "null",
                "tags": [],
                "coq_statement": full_thm,
                "isabelle_statement": "null"
            })
    return theorems

def extract_isabelle(filename, theorems = []):
    map_theorem_names = {thm["name"]: thm for thm in theorems}
    with open(filename, "r") as f:
        text = f.read()
    matches = isabelle_regex_match.findall(text)
    for match in matches:
        thm_name = match
        if thm_name in map_theorem_names:
            map_theorem_names[thm_name]["isabelle_statement"] = text
        else:
            map_theorem_names[thm_name]["isabelle_statement"] = "null"
    return theorems

def serialize_jsonl(theorems, output_filename):
    with open(output_filename, "w") as f:
        for thm in theorems:
            f.write(json.dumps(thm) + "\n")

def serialize_json(theorems, output_filename):
    with open(output_filename, "w") as f:
        json.dump(theorems, f)

def serialize_csv(theorems, output_filename):
    with open(output_filename, "w") as f:
        writer = csv.writer(f)
        writer.writerow(["name", "lean4_statement", "informal_statement", "informal_solution", "tags", "coq_statement", "isabelle_statement"])
        for thm in theorems:
            writer.writerow([thm["name"], thm["lean4_statement"], thm["informal_statement"], thm["informal_solution"], thm["tags"], thm["coq_statement"], thm["isabelle_statement"]])

def extract_all_lean(folder, theorems = []):
    for filename in os.listdir(folder):
        if filename.endswith(".lean"):
            theorems += extract_lean(os.path.join(folder, filename))
    return theorems

def extract_all_informal(folder, theorems = []):
    file_name = os.path.join(folder, "putnam.json")
    theorems = extract_informal(file_name, theorems)
    return theorems

def extract_all_coq(folder, theorems = []):
    for filename in os.listdir(folder):
        if filename.endswith(".v") and filename.startswith("batch"):
            theorems = extract_coq(os.path.join(folder, filename), theorems)
    return theorems

def extract_all_isabelle(folder, theorems = []):
    for filename in os.listdir(folder):
        if filename.endswith(".thy"):
            theorems = extract_isabelle(os.path.join(folder, filename), theorems)
    return theorems

def extract_all(folder):
    theorems = extract_all_lean(os.path.join(folder, "lean4"), [])
    theorems = extract_all_informal(os.path.join(folder, "informal"), theorems)
    theorems = extract_all_coq(os.path.join(folder, "coq"), theorems)
    theorems = extract_all_isabelle(os.path.join(folder, "isabelle"), theorems)
    for thm in theorems:
        if "informal_statement" not in thm:
            thm["informal_statement"] = "null"
        if "informal_solution" not in thm:
            thm["informal_solution"] = "null"
        if "tags" not in thm:
            thm["tags"] = []
        if "coq_statement" not in thm:
            thm["coq_statement"] = "null"
        if "isabelle_statement" not in thm:
            thm["isabelle_statement"] = "null"
    return theorems

def serialize_all(folder, output_filename):
    theorems = extract_all(folder)
    serialize_jsonl(theorems, os.path.join(folder, f"{output_filename}.jsonl"))
    serialize_json(theorems, os.path.join(folder, f"{output_filename}.json"))
    serialize_csv(theorems, os.path.join(folder, f"{output_filename}.csv"))

def main():
    serialize_all("/home/amthakur/Project/PUTNAM", "putnam")

if __name__ == '__main__':
    main()