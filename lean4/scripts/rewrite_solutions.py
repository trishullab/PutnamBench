import os
import argparse

def rewrite_solutions(file):
    # first read the entire file, and proceed line by line
    problem_name = file.split('.')[0]
    with open("src/"+file, "r") as f:
        lines = f.readlines()
        # find all lines which contain the string "abbrev", and then take the line after that
        # and replace the line with the line after that
        # then write the new content to the file
        solution_dictionary = {}
        for i, line in enumerate(lines):
            if "abbrev" in line:
                split_line = line.split(" ")
                for j, word in enumerate(split_line):
                    if word == "abbrev":
                        solution_name = split_line[j + 1].strip()
                print(lines[i+1].split('--'))
                solution = lines[i + 1].split('--')[1].strip()
                # the type comes between the first and second colon in the ith line
                # the solution comes after the second colon in the ith line
                # TODO: actually get the thing between the first : and the last := or last :
                type = lines[i].split(':')[1].strip()
                solution_dictionary[solution_name] = {'solution' : solution.replace("\n", ""), 'type' : type}
        print(solution_dictionary)

    with open(f"/home/gtsoukal/Projects/PUTNAM/lean4/solutions_replaced_new/{problem_name}_sol.lean", "w") as f:
        for line in lines:
            for solution_name, solution in solution_dictionary.items():
                if solution_name in line and 'abbrev' not in line:
                    if solution['solution'][0] == '(' and solution['solution'][-1] == ')':
                        solution['solution'] = solution['solution'][1:-1]
                    line = line.replace(solution_name, f"(({solution['solution']}) : {solution['type']})")
            if 'abbrev' in line: # TODO: Modify this on release
                continue
            f.write(line)

if __name__ == '__main__':
    # inputs a single year, and rewrites in the problem statement each instance of the solution
    # with the solution itself
    for file in os.listdir('/home/gtsoukal/Projects/PUTNAM/lean4/src'):
        if file.endswith('.lean'):
            rewrite_solutions(file)