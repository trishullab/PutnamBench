import Mathlib

open Nat Topology Filter

/--
If $f$ and $g$ are continuous and periodic functions with period $1$ on the real line, then $\lim_{n \to \infty} \int_0^1 f(x)g(nx)\,dx=(\int_0^1 f(x)\,dx)(\int_0^1 g(x)\,dx)$.
-/
theorem putnam_1967_b3
(f g : ℝ → ℝ)
(fgcont : Continuous f ∧ Continuous g)
(fgperiod : Function.Periodic f 1 ∧ Function.Periodic g 1)
: Tendsto (fun n : ℤ => ∫ x in Set.Ioo 0 1, f x * g (n * x)) atTop (𝓝 ((∫ x in Set.Ioo 0 1, f x) * (∫ x in Set.Ioo 0 1, g x))) :=
sorry
