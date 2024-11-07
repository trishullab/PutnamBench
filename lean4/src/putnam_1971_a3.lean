import Mathlib

open Set

/--
The three vertices of a triangle of sides $a,b,c$ are lattice points and lie on a circle of radius $R$. Show that $abc \geq 2R$.
-/
theorem putnam_1971_a3
    (a b c : ℝ × ℝ)
    (R : ℝ)
    (habclattice : a.1 = round a.1 ∧ a.2 = round a.2 ∧ b.1 = round b.1 ∧ b.2 = round b.2 ∧ c.1 = round c.1 ∧ c.2 = round c.2)
    (habcneq : a ≠ b ∧ a ≠ c ∧ b ≠ c)
    (hR : R > 0)
    (hcircle : ∃ C : ℝ × ℝ,
      √((a.1 - C.1)^2 + (a.2 - C.2)^2) = R ∧
      √((b.1 - C.1)^2 + (b.2 - C.2)^2) = R ∧
      √((c.1 - C.1)^2 + (c.2 - C.2)^2) = R) :
    (√((a.1 - b.1)^2 + (a.2 - b.2)^2)) * (√((a.1 - c.1)^2 + (a.2 - c.2)^2)) * (√((b.1 - c.1)^2 + (b.2 - c.2)^2)) ≥ 2 * R :=
  sorry
