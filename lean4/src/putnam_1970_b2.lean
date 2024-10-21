import Mathlib

open Metric Set EuclideanGeometry Filter Topology

/--
Let $H$ be a polynomial of degree at most $3$ and $T$ be a positive real number. Show that the average value of $H(t)$ over the interval $[-T, T]$ equals the average of $H\left(-\frac{T}{\sqrt{3}}\right)$ and $H\left(\frac{T}{\sqrt{3}}\right)$.
-/
theorem putnam_1970_b2
(T : ℝ)
(H : Polynomial ℝ)
(hT : T > 0)
(hH : H.degree ≤ 3)
: (H.eval (-T / Real.sqrt 3) + H.eval (T / Real.sqrt 3))/2 = ⨍ t in Set.Icc (-T) T, H.eval t :=
sorry
