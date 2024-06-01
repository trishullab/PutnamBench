import os
import argparse

def rewrite_solutions(year):
    # first read the entire file, and proceed line by line
    with open(f"putnam_{year}.lean", "r") as f:
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
                # print(lines[i+1].split('--'))
                solution = lines[i + 1].split('--')[1].strip()
                solution_dictionary[solution_name] = solution.replace("\n", "")
        print(solution_dictionary)

    with open(f"solutions_replaced_putnam_{year}.lean", "w") as f:
        for line in lines:
            for solution_name, solution in solution_dictionary.items():
                if solution_name in line and 'abbrev' not in line:
                    if solution[0] == '(' and solution[-1] == ')':
                        solution = solution[1:-1]
                    line = line.replace(solution_name, f"({solution})")
            if 'abbrev' in line: # TODO: Modify this on release
                continue
            f.write(line)

if __name__ == '__main__':
    # inputs a single year, and rewrites in the problem statement each instance of the solution
    # with the solution itself
    parser = argparse.ArgumentParser(description='Rewrite solutions in the problem statement.')
    parser.add_argument('year', type=int, help='The year of the Putnam exam.')
    args = parser.parse_args()
    rewrite_solutions(args.year)