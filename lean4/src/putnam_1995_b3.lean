import Mathlib

open Filter Topology Real Nat

-- Note: Boosted the domain/range of digits_set to ℕ because of membership problems in Finset.range 10
abbrev putnam_1995_b3_solution : ℕ → ℤ := sorry
-- fun n => if n = 1 then 45 else if n = 2 then 10 * 45^2 else 0
/--
To each positive integer with $n^{2}$ decimal digits, we associate the determinant of the matrix obtained by writing the digits in order across the rows. For example, for $n=2$, to the integer 8617 we associate $\det \left( \begin{array}{cc} 8 & 6 \ 1 & 7 \end{array} \right) = 50$. Find, as a function of $n$, the sum of all the determinants associated with $n^{2}$-digit integers. (Leading digits are assumed to be nonzero; for example, for $n=2$, there are 9000 determinants.)
-/
theorem putnam_1995_b3
(n : ℕ)
(hn : n > 0)
(digits_set : Set (ℕ → ℕ))
(hdigits_set : digits_set = {f | f 0 ≠ 0 ∧ (∀ i : Fin (n ^ 2), f i ≤ 9) ∧ (∀ i ≥ n ^ 2, f i = 0)})
(digits_to_matrix : (ℕ → ℕ) → Matrix (Fin n) (Fin n) ℤ)
(hdigits_to_matrix : digits_to_matrix = fun f => (fun i j => f (i.1 * n + j.1)))
: ∑' f : digits_set, (digits_to_matrix f).det = putnam_1995_b3_solution n :=
sorry
