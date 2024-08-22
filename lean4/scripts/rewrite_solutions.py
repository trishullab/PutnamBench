import os
from pathlib import Path
import re


def rewrite_solutions(file, out_file):
    # first read the entire file, and proceed line by line
    problem_name = file.stem
    with file.open("r", encoding='utf8') as f:
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
                        break
                else:
                    raise ValueError(f"Could not parse solution name from: {line}")

                solution = lines[i + 1].split('--')[1].strip()
                # the type comes between the first and second colon in the ith line
                # the solution comes after the second colon in the ith line
                if m := re.fullmatch(r'.*?:\s*(.*)\s*:=\s*sorry\n', line):
                    type = m.group(1)
                else:
                    raise ValueError(f"Could not parse type from: {line}")
                solution_dictionary[solution_name] = {'solution' : solution.replace("\n", ""), 'type' : type}
    with out_file.open("w", encoding='utf8') as f:
        for line in lines:
            for solution_name, solution in solution_dictionary.items():
                if solution_name in line and 'abbrev' not in line:
                    if solution['solution'][0] == '(' and solution['solution'][-1] == ')':
                        solution['solution'] = solution['solution'][1:-1]
                    line = line.replace(solution_name, f"(({solution['solution']}) : {solution['type']})")
            if 'abbrev' in line:
                continue
            f.write(line)

if __name__ == '__main__':
    root_dir = Path(__file__).parent.parent
    out_dir = root_dir / 'solutions_replaced_new'
    out_dir.mkdir(exist_ok=True)
    errors = []
    for file in (root_dir / 'src').glob('*.lean'):
        out_file = out_dir / f'{file.stem}_sol.lean'
        try:
            rewrite_solutions(file, out_file)
        except ValueError as e:
            errors.append(e)
    if errors:
        raise ExceptionGroup("Could not process some files", errors)
