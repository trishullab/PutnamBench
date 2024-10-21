import Mathlib

open Filter Topology Metric

/--
Prove that there is a constant $C$ such that, if $p(x)$ is a polynomial of degree 1999, then \[|p(0)|\leq C \int_{-1}^1 |p(x)|\,dx.\]
-/
theorem putnam_1999_a5
: ∃ C : ℝ, ∀ p : Polynomial ℝ, p.degree = 1999 → ‖p.eval 0‖ ≤ C * ∫ x in (-1)..1, ‖p.eval x‖ :=
sorry
