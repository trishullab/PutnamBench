import os
import json
import argparse
import re

# This script reads the build logs and scores the solutions.

def main():
    args = argparse.ArgumentParser()
    args.add_argument("--original_build_log", type=str, default="lean4/original_build.log",
                        help="Original build log.")
    args.add_argument("--solution_build_log", type=str, default="lean4/solution_build.log",
                        help="Build log with solutions.")
    args.add_argument("--insertion_summary_file", type=str, default="lean4/src_with_sorries_replaced/insert_solutions_summary.json",
                        help="JSON file containing summary of the insertion process.")
    args.add_argument("--score_file", type=str, default="lean4/src_with_sorries_replaced/score.json",
                        help="JSON file containing scores.")
    args = args.parse_args()
    assert os.path.exists(args.original_build_log), f"Original build log {args.original_build_log} does not exist."
    assert os.path.exists(args.solution_build_log), f"Solution build log {args.solution_build_log} does not exist."
    assert os.path.exists(args.insertion_summary_file), f"Insertion summary file {args.insertion_summary_file} does not exist."
    with open(args.original_build_log, "r") as f:
        original_build_log = f.read()
    with open(args.solution_build_log, "r") as f:
        solution_build_log = f.read()
    with open(args.insertion_summary_file, "r") as f:
        insertion_summary = json.load(f)
    lean_soln_dump_folder_name = insertion_summary["lean_solution_dump_folder_name"]
    problem_with_sorries_folder_name = insertion_summary["problem_with_sorries_folder_name"]
    # Count the number of problems from the original build log
    rexp = rf"{problem_with_sorries_folder_name}\.([\s\S]*?)declaration uses 'sorry'"
    original_probl_count_regex = re.compile(rexp, re.MULTILINE)
    original_problems = original_probl_count_regex.findall(original_build_log)
    all_problems_compiled = []
    for i, problem in enumerate(original_problems):
        problem_id = problem.split(problem_with_sorries_folder_name)[-1].split(".lean")[0].strip("/")
        all_problems_compiled.append(problem_id)
    all_problems_mentioned = []
    for file in os.listdir(os.path.join("lean4", problem_with_sorries_folder_name)):
        if file.endswith(".lean") and not file == "allimports.lean":
            problem_id = file.split(".")[0]
            all_problems_mentioned.append(problem_id)
    assert len(all_problems_mentioned) == len(all_problems_compiled), f"Number of problems mentioned in the folder {len(all_problems_mentioned)} does not match the number of problems compiled {len(all_problems_compiled)}. Possibly some problems have their solutions leaked."
    all_problems_mentioned = set(all_problems_mentioned)
    all_problems_compiled = set(all_problems_compiled)
    assert all_problems_mentioned.issubset(all_problems_compiled), f"Some problems have their solutions leaked. {all_problems_mentioned - all_problems_compiled}"
    # Count the number of problems from the solution build log which have sorries
    rexp = rf"{lean_soln_dump_folder_name}\.([\s\S]*?)declaration uses 'sorry'"
    unsolved_probl_count_regex = re.compile(rexp, re.MULTILINE)
    unsolved_problems = unsolved_probl_count_regex.findall(solution_build_log)
    unsolved_problems_set = set()
    for i, problem in enumerate(unsolved_problems):
        problem_id = problem.split(lean_soln_dump_folder_name)[-1].split(".lean")[0].strip("/")
        unsolved_problems_set.add(problem_id)
    problems_attempted = set(insertion_summary["problems_attempted_list"])
    assert unsolved_problems_set.issubset(problems_attempted), f"Something wrong with insertion of proofs. Some problems have their solutions leaked. {unsolved_problems_set - problems_attempted}"
    
    # Count the problems for which the build failed
    rexp = rf"✖([\s\S]*?){lean_soln_dump_folder_name}\.(\w+)"
    failed_probl_count_regex = re.compile(rexp, re.MULTILINE)
    failed_problems = failed_probl_count_regex.findall(solution_build_log)
    failed_problems_set = set()
    for i, problem in enumerate(failed_problems):
        problem_id = problem[1]
        failed_problems_set.add(problem_id)
    assert failed_problems_set.issubset(problems_attempted), f"Something wrong with insertion of proofs. Some problems have their solutions leaked. {failed_problems_set - problems_attempted}"
    solved_problems = problems_attempted - unsolved_problems_set - failed_problems_set
    score = len(solved_problems) / len(all_problems_mentioned)
    summary = {
        "problems_attempted": len(problems_attempted),
        "problems_solved": len(solved_problems),
        "problems_unsolved": len(unsolved_problems_set),
        "problems_failed_compilation": len(failed_problems_set),
        "total_problems": len(all_problems_mentioned),
        "score": score,
        "problems_solved_list": sorted(list(solved_problems)),
        "problems_attempted_list": sorted(list(problems_attempted)),
        "problems_failed_compilation_list": sorted(list(failed_problems_set)),
        "note": "If any problem has failed to compile (i.e. `problems_failed_compilation` > 0), then `problems_solved` may be less than the actual number of problems solved. " +
        "Please submit only those problems which can be compiled successfully or else add sorries in your solutions to make compilation successful. " +
        "The lean build will break at the first problem which fails to compile, and hence it is not possible to score the problems after that."
    }
    with open(args.score_file, "w") as f:
        json.dump(summary, f, indent=4)
    with open(args.score_file, "r") as f:
        summary_str = f.read()
    print(summary_str)

if __name__ == "__main__":
    main()