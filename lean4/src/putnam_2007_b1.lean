import Mathlib

open Set Nat

/--
Let $f$ be a nonconstant polynomial with positive integer coefficients. Prove that if $n$ is a positive integer, then $f(n)$ divides $f(f(n) + 1)$ if and only if $n = 1$
-/
theorem putnam_2007_b1
(f : Polynomial ℤ)
(hf : ∀ n : ℕ, f.coeff n ≥ 0)
(hfnconst : ∃ n : ℕ, n > 0 ∧ f.coeff n > 0)
(n : ℤ)
(hn : n > 0)
: f.eval n ∣ f.eval (f.eval n + 1) ↔ n = 1 :=
sorry
