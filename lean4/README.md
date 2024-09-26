# Lean formalizations

The formalizations in this folder are of the form
```lean
import Mathlib

abbrev putnam_easy_solution : ℕ := sorry
-- 2

theorem putnam_easy : 1 + 1 = putnam_easy_solution := sorry
```

To generate versions with the solution inlined into the question, you can use `python scripts/rewrite_solutions.py`.
