import os
import json
import argparse

# This script reads a JSON file containing solutions and proofs for problems in a Lean file, and inserts them into the Lean file.
# [
#     {
#         "id": "problem1",
#         "solution": "0",
#         "proof": "by\r\n--..."
#     },
#     {
#         "id": "problem2",
#         "solution": null,
#         "proof": "by\r\n--..."
#     },
#     {
#         "id": "problem3",
#         "solution": "{p | \u2203 (a : \u211D), p = (a, a) \u2227 0 < a}",
#         "proof": "by\r\n-- Subtract the two equations..."
#     },
#     ...


def main():
    args = argparse.ArgumentParser()
    args.add_argument("--problem_with_sorries_folder", type=str, default= "lean4/src_with_sorries", 
    help="Folder containing Lean files with problems that have sorries.")
    args.add_argument("--lean_solution_dump_folder", type=str, default="lean4/src_with_sorries_replaced",
    help="Folder containing Lean files with solutions.")
    args.add_argument("--json_solution_file", type=str, default="lean4/only_proofs/solutions.json",
    help="JSON file containing solutions and proofs for problems in a Lean file.")
    args.add_argument("--summary_file", type=str, default="lean4/src_with_sorries_replaced/insert_solutions_summary.json",
    help="JSON file containing summary of the insertion process.")
    args = args.parse_args()
    assert os.path.exists(args.problem_with_sorries_folder)
    assert os.path.exists(args.json_solution_file)
    # Make sure that the dump folder exists in lean4 folder
    lean4_folder = os.path.abspath("lean4")
    # lean_solution_dump_folder should be a subfolder of lean4
    abs_lean_solution_dump_folder = os.path.abspath(args.lean_solution_dump_folder)
    assert abs_lean_solution_dump_folder.startswith(lean4_folder), f"lean_solution_dump_folder should be a subfolder of lean4 folder."
    # lean_solution_dump_folder should not be a subfolder of problem_with_sorries_folder
    abs_problem_with_sorries_folder = os.path.abspath(args.problem_with_sorries_folder)
    assert not (abs_lean_solution_dump_folder.strip('/') + '/').startswith(abs_problem_with_sorries_folder.strip('/') + '/'), f"lean_solution_dump_folder should not be a subfolder of problem_with_sorries_folder. {abs_lean_solution_dump_folder} {abs_problem_with_sorries_folder}"
    # lean_solution_dump_folder should be only one level below lean4
    assert abs_lean_solution_dump_folder.count(os.sep) == lean4_folder.count(os.sep) + 1, f"lean_solution_dump_folder should be only one level below lean4."
    lean_soln_dump_folder_name = os.path.basename(abs_lean_solution_dump_folder)
    problem_with_sorries_folder_name = os.path.basename(abs_problem_with_sorries_folder)
    if os.path.exists(args.lean_solution_dump_folder):
        os.system(f"rm -rf {args.lean_solution_dump_folder}")
    # Copy the problems folder to the dump folder
    os.system(f"cp -r {args.problem_with_sorries_folder} {args.lean_solution_dump_folder}")
    solution_json = json.load(open(args.json_solution_file))
    problems_count = 0
    # Go over the files in the problem folder and check if any problem is not attempted
    for file in os.listdir(args.lean_solution_dump_folder):
        if file.endswith(".lean") and not file == "allimports.lean":
            problems_count += 1
    problem_id_attempted_set = set()
    for solution in solution_json:
        assert "id" in solution and "solution" in solution and "proof" in solution, "Invalid JSON format. Each object should have 'id', 'solution', and 'proof' fields."
        problem_id = solution["id"]
        solution_str = solution["solution"]
        proof_str = solution["proof"]
        if problem_id in problem_id_attempted_set:
            print(f"Problem {problem_id} is attempted multiple times. Skipping.")
            continue
        answer_count_in_soln = 0 if solution_str is None else 1
        answer_count_in_soln += 0 if proof_str is None or proof_str == "" or proof_str == "sorry" else 1
        problem_path = os.path.join(args.lean_solution_dump_folder, f"{problem_id}.lean")
        if not os.path.exists(problem_path):
            raise FileNotFoundError(f"File {problem_path} not found. Something wrong with the set of problems.")
        with open(problem_path, "r") as f:
            problem_str = f.read()
        sorry_count_in_prob = problem_str.count("sorry")
        if sorry_count_in_prob != answer_count_in_soln:
            print(f"Problem {problem_id} has {sorry_count_in_prob} sorries, but the solution has {answer_count_in_soln} answers.")
            print(f"Problem {problem_id} is not attempted completely. Skipping.")
        else:
            if solution_str is not None:
                # Replace the first sorry with the solution
                problem_str = problem_str.replace("sorry", solution_str, 1)
            # Replace the second sorry with the proof
            problem_str = problem_str.replace("sorry", proof_str, 1)
            problem_id_attempted_set.add(problem_id)
        solution_dump_path = os.path.join(args.lean_solution_dump_folder, f"{problem_id}.lean")
        with open(solution_dump_path, "w") as f:
            f.write(problem_str)
    summary = {
        "total_problems": problems_count,
        "problems_attempted_count": len(problem_id_attempted_set),
        "problems_not_attempted_count": problems_count - len(problem_id_attempted_set),
        "lean_solution_dump_folder_name": lean_soln_dump_folder_name,
        "problem_with_sorries_folder_name": problem_with_sorries_folder_name,
        "problems_attempted_list": sorted(list(problem_id_attempted_set))
    }
    with open(args.summary_file, "w") as f:
        json.dump(summary, f, indent=4)
    print(f"Summary written to {args.summary_file}")
    # Print the summary
    with open(args.summary_file, "r") as f:
        summary_str = f.read()
    print(summary_str)

if __name__ == "__main__":
    main()