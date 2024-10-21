import Mathlib

open Matrix Filter Topology Set Nat

/--
Suppose $T$ is a sequence which satisfies $T_n * T_{n+1} = n$ whenever $n \geq 1$, and also $\lim_{n \to \infty} \frac{T_n}{T_{n+1}} = 1. Show that $\pi * T_1^2 = 2$.
-/
theorem putnam_1969_b3
(T : ℕ → ℝ)
(hT1 : ∀ n : ℕ, n ≥ 1 → (T n) * (T (n + 1)) = n)
(hT2 : Tendsto (fun n => (T n)/(T (n + 1))) atTop (𝓝 1))
: Real.pi * (T 1)^2 = 2 :=
sorry
