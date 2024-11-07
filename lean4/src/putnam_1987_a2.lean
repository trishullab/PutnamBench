import Mathlib

abbrev putnam_1987_a2_solution : ℕ := sorry
-- 1984
/--
The sequence of digits $123456789101112131415161718192021 \dots$ is obtained by writing the positive integers in order. If the $10^n$-th digit in this sequence occurs in the part of the sequence in which the $m$-digit numbers are placed, define $f(n)$ to be $m$. For example, $f(2)=2$ because the $100$th digit enters the sequence in the placement of the two-digit integer $55$. Find, with proof, $f(1987)$.
-/
theorem putnam_1987_a2
    (seqind seqsize f : ℕ → ℕ)
    (hseqind : seqind 1 = 1 ∧ ∀ i ≥ 2, seqind i = seqind (i - 1) + (Nat.digits 10 (i - 1)).length)
    (hseqsize : ∀ i ≥ 1, ∀ j : Fin ((Nat.digits 10 i).length), seqsize (seqind i + j) = (Nat.digits 10 i).length)
    (hf : ∀ n : ℕ, f n = seqsize (10 ^ n)) :
    f 1987 = putnam_1987_a2_solution :=
  sorry
