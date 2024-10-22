import Mathlib

open Topology Filter

/--
Let $\{f(n)\}$ be a strictly increasing sequence of positive integers such that $f(2)=2$ and $f(mn)=f(m)f(n)$ for every relatively prime pair of positive integers $m$ and $n$ (the greatest common divisor of $m$ and $n$ is equal to $1$). Prove that $f(n)=n$ for every positive integer $n$.
-/
theorem putnam_1963_a2
(f : ℕ → ℕ)
(hfpos : ∀ n, f n > 0)
(hfinc : StrictMonoOn f (Set.Ici 1))
(hf2 : f 2 = 2)
(hfmn : ∀ m n, m > 0 → n > 0 → IsRelPrime m n → f (m * n) = f m * f n)
: ∀ n > 0, f n = n :=
sorry
