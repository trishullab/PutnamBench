import Mathlib

open Set Nat Polynomial Filter Topology

/--
Prove that if $\alpha$ is a real number such that $\cos (\pi \alpha) = 1/3$, the $\alpha$ is irrational.
-/
theorem putnam_1974_b3
(α : ℝ)
(ha : Real.cos (Real.pi * α) = (1 : ℝ)/3)
: Irrational α :=
sorry
