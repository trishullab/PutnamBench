import Mathlib
open BigOperators

open Topology Filter

noncomputable abbrev putnam_1984_a3_solution : MvPolynomial (Fin 3) ℝ := sorry
-- (MvPolynomial.X 2) ^ 2 * ((MvPolynomial.X 0) ^ 2 - (MvPolynomial.X 1) ^ 2)
theorem putnam_1984_a3
(n : ℕ)
(a b : ℝ)
(Mn : ℝ → Matrix (Fin (2 * n)) (Fin (2 * n)) ℝ)
(polyabn : Fin 3 → ℝ)
(npos : n > 0)
(aneb : a ≠ b)
(hMnx : ∀ x : ℝ, ∀ i : Fin (2 * n), (Mn x) i i = x)
(hMna : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Even ((i : ℕ) + j)) → (Mn x) i j = a)
(hMnb : ∀ x : ℝ, ∀ i j : Fin (2 * n), (i ≠ j ∧ Odd ((i : ℕ) + j)) → (Mn x) i j = b)
(hpolyabn : polyabn 0 = a ∧ polyabn 1 = b ∧ polyabn 2 = n)
: Tendsto (fun x : ℝ => (Mn x).det / (x - a) ^ (2 * n - 2)) (𝓝[≠] a) (𝓝 (MvPolynomial.eval polyabn putnam_1984_a3_solution)) :=
sorry
