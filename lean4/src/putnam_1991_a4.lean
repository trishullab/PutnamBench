import Mathlib
open BigOperators

open Filter FiniteDimensional Metric Topology

abbrev putnam_1991_a4_solution : Prop := sorry
-- True
theorem putnam_1991_a4 :
    (∃ (c : ℕ → EuclideanSpace ℝ (Fin 2)) (r : ℕ → ℝ),
      (¬ ∃ p, MapClusterPt p atTop c) ∧
      (Summable <| fun i ↦ r i ^ 2) ∧
      (∀ L : AffineSubspace ℝ (EuclideanSpace ℝ (Fin 2)),
        finrank L.direction = 1 → ∃ i, (↑L ∩ closedBall (c i) (r i)).Nonempty)) ↔
    putnam_1991_a4_solution :=
  sorry
