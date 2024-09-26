# Lean formalizations

The formalizations in this folder are of the form
```lean
import Mathlib

abbrev putnam_easy_solution : ℕ := sorry
-- 2

/-- What is 1 + 1 -/
theorem putnam_easy : 1 + 1 = putnam_easy_solution := sorry
```

The docstring on the theorem must stay in sync with `informal/putnam.json`,
and should not be changed unless the informal problem text is wrong!
