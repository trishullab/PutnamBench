import Mathlib

open Set

abbrev putnam_1979_a4_solution : Prop := sorry
-- True
/--
Let $A$ be a set of $2n$ points in the plane, $n$ colored red and $n$ colored blue, such that no three points in $A$ are collinear. Must there exist $n$ closed straight line segments, each connecting one red and one blue point in $A$, such that no two of the $n$ line segments intersect?
-/
theorem putnam_1979_a4
    (A : Finset (Fin 2 → ℝ) × Finset (Fin 2 → ℝ) → Prop)
    (hA : A = fun (R, B) => R.card = B.card ∧ R ∩ B = ∅ ∧
      ∀ u : Finset (Fin 2 → ℝ), u ⊆ R ∪ B → u.card = 3 → ¬Collinear ℝ (u : Set (Fin 2 → ℝ)))
    (w : (Fin 2 → ℝ) × (Fin 2 → ℝ) → ℝ → (Fin 2 → ℝ))
    (hw : w = fun (P, Q) => fun x : ℝ => fun i : Fin 2 => x * P i + (1 - x) * Q i) :
    putnam_1979_a4_solution ↔
      (∀ R B, A (R, B) →
        ∃ v : Finset ((Fin 2 → ℝ) × (Fin 2 → ℝ)),
          (∀ L ∈ v, ∀ M ∈ v, L ≠ M → ∀ x ∈ Icc 0 1, ∀ y ∈ Icc 0 1,
          Real.sqrt ((w (L.1, L.2) x 0 - w (M.1, M.2) y 0)^2 + (w (L.1, L.2) x 1 - w (M.1, M.2) y 1)^2) ≠ 0) ∧
        v.card = R.card ∧ ∀ L ∈ v, L.1 ∈ R ∧ L.2 ∈ B) :=
  sorry
