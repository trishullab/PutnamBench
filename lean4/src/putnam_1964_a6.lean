import Mathlib

open Set Function Filter Topology

/--
Let $S$ be a finite set of collinear points. Let $k$ be the maximum distance between any two points of $S$. Given a pair of points of $S$ a distance $d < k$ apart, we can find another pair of points of $S$ also a distance $d$ apart. Prove that if two pairs of points of $S$ are distances $a$ and $b$ apart, then $\frac{a}{b}$ is rational.
-/
theorem putnam_1964_a6
(S : Finset ℝ)
(pairs : Set (ℝ × ℝ))
(hpairs : pairs = {(a, b) | (a ∈ S) ∧ (b ∈ S) ∧ (a < b)})
(distance : ℝ × ℝ → ℝ)
(hdistance : distance = fun (a, b) ↦ b - a)
(hrepdist : ∀ p ∈ pairs, (∃ m ∈ pairs, distance m > distance p) → ∃ q ∈ pairs, q ≠ p ∧ distance p = distance q)
: (∀ p q : pairs, q ≠ p → ∃ r : ℚ, distance p / distance q = r) :=
sorry
