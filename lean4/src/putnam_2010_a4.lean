import Mathlib

/--
Prove that for each positive integer $n$, the number $10^{10^{10^n}} + 10^{10^n} + 10^n - 1$ is not prime.
-/
theorem putnam_2010_a4
: ∀ n : ℕ, n > 0 → ¬Nat.Prime (10^10^10^n + 10^10^n + 10^n - 1) :=
sorry
