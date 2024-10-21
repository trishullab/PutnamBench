import Mathlib

open Topology Filter Set Polynomial Function

abbrev putnam_1981_b5_solution : Prop := sorry
-- True
/--
Let $B(n)$ be the number of ones in the base two expression for the positive integer $n$. For example, $B(6)=B(110_2)=2$ and $B(15)=B(1111_2)=4$. Determine whether or not $\exp \left(\sum_{n=1}^\infty \frac{B(n)}{n(n+1)}\right)$ is a rational number. Here $\exp(x)$ denotes $e^x$.
-/
theorem putnam_1981_b5
(sumbits : List ℕ → ℤ)
(B : ℕ → ℤ)
(hsumbits : ∀ bits : List ℕ, sumbits bits = ∑ i : Fin bits.length, (bits[i] : ℤ))
(hB : ∀ n > 0, B n = sumbits (Nat.digits 2 n))
: (∃ q : ℚ, Real.exp (∑' n : Set.Ici 1, B n / ((n : ℝ) * ((n : ℝ) + 1))) = q) ↔ putnam_1981_b5_solution :=
sorry
