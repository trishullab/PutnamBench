import os

# open putnam.lean, and for each year from 1984 to 2023, 
# copy the information between the lines 'section putnam_{YEAR}` and `end putnam_{YEAR}'
# into a file named "putnam_{YEAR}.lean"
with open("putnam.lean", "r") as f:
    lines = f.readlines()
    for year in range(1984, 2024):
        filename = f"putnam_{year}.lean"
        with open(filename, "w") as g:
            g.write("import Mathlib\nopen BigOperators\n\n")
            is_in_section = False
            for line in lines:
                if is_in_section:
                    if line.strip() == f"end putnam_{year}":
                        break
                    g.write(line)
                elif line.strip() == f"section putnam_{year}":
                    is_in_section = True
                     

# for each year from 1984 to 2023, make a file named "putnam_{YEAR}.lean"
for year in range(1984, 2024):
    filename = f"putnam_{year}.lean"
    with open(filename, "w") as f:
        f.write(f"import Mathlib\n open BigOperators\n\n")