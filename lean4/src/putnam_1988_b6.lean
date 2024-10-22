import Mathlib

open Set Filter Topology

/--
Prove that there exist an infinite number of ordered pairs $(a,b)$ of integers such that for every positive integer $t$, the number $at+b$ is a triangular number if and only if $t$ is a triangular number. (The triangular numbers are the $t_n=n(n+1)/2$ with $n$ in $\{0,1,2,\dots\}$.)
-/
theorem putnam_1988_b6
(trinums : Set ℤ)
(htrinums : trinums = {t : ℤ | ∃ n : ℤ, t ≥ 0 ∧ t = (n * (n + 1)) / 2})
: {(a, b) : ℤ × ℤ | ∀ t > 0, (a * t + b) ∈ trinums ↔ t ∈ trinums}.encard = ⊤ :=
sorry
