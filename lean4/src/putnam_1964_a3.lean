import Mathlib

open Set Function

/--
The distinct points $x_n$ are dense in the interval $(0, 1)$. For all $n \geq 1$, $x_1, x_2, \dots , x_{n-1}$ divide $(0, 1)$ into $n$ sub-intervals, one of which must contain $x_n$. This part is divided by $x_n$ into two sub-intervals, lengths $a_n$ and $b_n$. Prove that $\sum_{n=1}^{\infty} a_nb_n(a_n + b_n) = \frac{1}{3}$.
-/
theorem putnam_1964_a3
(x a b : ℕ → ℝ)
(hxdense : range x ⊆ Ioo 0 1 ∧ closure (range x) ⊇ Ioo 0 1)
(hxinj : Injective x)
(ha : a = fun n ↦ x n - sSup ({0} ∪ {p : ℝ | p < x n ∧ ∃ i < n, p = x i}))
(hb : b = fun n ↦ sInf ({1} ∪ {p : ℝ | p > x n ∧ ∃ i < n, p = x i}) - x n)
: (∑' n : ℕ, a n * b n * (a n + b n) = 1 / 3) :=
sorry
