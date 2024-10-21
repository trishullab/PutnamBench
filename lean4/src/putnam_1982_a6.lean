import Mathlib
open BigOperators

open Set Function Filter Topology Polynomial Real

abbrev putnam_1982_a6_solution : Prop := sorry
-- False
/--
Let $b$ be a bijection from the positive integers to the positive integers. Also, let $x_1, x_2, x_3, \dots$ be an infinite sequence of real numbers with the following properties:
\begin{enumerate}
\item
$|x_n|$ is a strictly decreasing function of $n$;
\item
$\lim_{n \rightarrow \infty} |b(n) - n| \cdot |x_n| = 0$;
\item
$\lim_{n \rightarrow \infty}\sum_{k = 1}^{n} x_k = 1$.
\end{enumerate}
Prove or disprove: these conditions imply that $$\lim_{n \rightarrow \infty} \sum_{k = 1}^{n} x_{b(k)} = 1.$$
-/
theorem putnam_1982_a6
(S : Set ℕ)
(S_def : S = Ici 1)
(hb : (ℕ → ℕ) → Prop)
(hb_def : hb = fun b : ℕ → ℕ => BijOn b S S)
(hx : (ℕ → ℝ) → Prop)
(hx_def : hx = fun x : ℕ → ℝ => StrictAntiOn (fun n : ℕ => |x n|) S)
(limb : (ℕ → ℕ) × (ℕ → ℝ) → Prop)
(hlimb : limb = fun (b, x) => Tendsto (fun n : ℕ => |b n - (n : ℤ)| * |x n|) atTop (𝓝 0))
(limx : (ℕ → ℝ) → Prop)
(hlimx : limx = fun x : ℕ → ℝ => Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x k) atTop (𝓝 1))
: (∀ b : ℕ → ℕ, ∀ x : ℕ → ℝ, hb b ∧ hx x ∧ limb (b, x) ∧ limx x →
Tendsto (fun n : ℕ => ∑ k in Finset.Icc 1 n, x (b k)) atTop (𝓝 1)) ↔ putnam_1982_a6_solution :=
sorry
