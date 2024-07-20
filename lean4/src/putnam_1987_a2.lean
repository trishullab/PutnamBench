import Mathlib
open BigOperators

abbrev putnam_1987_a2_solution : ℕ := sorry
-- 1984
theorem putnam_1987_a2
(seqind : ℕ → ℕ)
(seqsize : ℕ → ℕ)
(f : ℕ → ℕ)
(hseqind : seqind 1 = 1 ∧ ∀ i ≥ 2, seqind i = seqind (i - 1) + (Nat.digits 10 (i - 1)).length)
(hseqsize : ∀ i ≥ 1, ∀ j : Fin ((Nat.digits 10 i).length), seqsize (seqind i + j) = (Nat.digits 10 i).length)
(hf : ∀ n : ℕ, f n = seqsize (10 ^ n))
: f 1987 = putnam_1987_a2_solution :=
sorry
