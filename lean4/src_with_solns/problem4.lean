import src.allimports
open BigOperators Real Nat Topology

/--
 Prove the mid-point theorem.
 In a triangle with vertices A, B, C, the segment joining the midpoints of AB and AC is parallel to side BC.
-/
theorem problem_4 {A B C : ℝ × ℝ} :
  let D := (1/2) • (A + B);
  let E := (1/2) • (A + C);
  (h_triangle: A ≠ B ∧ A ≠ C ∧ B ≠ C) →
  (D - E) = (1/2) • (C - B) :=
by
intros D E h_triangle
have h₁ : D = (1/2) • A + (1/2) • B := by simp [D]
have h₂ : E = (1/2) • A + (1/2) • C := by simp [E]
rw [h₁, h₂]
simp
