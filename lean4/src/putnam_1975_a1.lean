import Mathlib

open Polynomial

abbrev putnam_1975_a1_solution : ((ℤ × ℤ) → ℤ) × ((ℤ × ℤ) → ℤ) := sorry
-- (fun (a, b) => a + b + 1, fun (a, b) => a - b)
/--
If an integer $n$ can be written as the sum of two triangular numbers (that is, $n = \frac{a^2 + a}{2} + \frac{b^2 + b}{2}$ for some integers $a$ and $b$), express $4n + 1$ as the sum of the squares of two integers $x$ and $y$, giving $x$ and $y$ in terms of $a$ and $b$. Also, show that if $4n + 1 = x^2 + y^2$ for some integers $x$ and $y$, then $n$ can be written as the sum of two triangular numbers.
-/
theorem putnam_1975_a1
(nab nxy : (ℤ × ℤ × ℤ) → Prop)
(hnab : nab = fun (n, a, b) => n = (a^2 + (a : ℚ))/2 + (b^2 + (b : ℚ))/2)
(hnxy : nxy = fun (n, x, y) => 4*n + 1 = x^2 + y^2)
: (∀ n a b : ℤ, nab (n, a, b) → nxy (n, putnam_1975_a1_solution.1 (a, b), putnam_1975_a1_solution.2 (a, b))) ∧
∀ n : ℤ, (∃ x y : ℤ, nxy (n, x, y)) → ∃ a b : ℤ, nab (n, a, b) :=
sorry
