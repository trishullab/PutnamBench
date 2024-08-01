import Mathlib
open BigOperators

open Topology Filter

theorem putnam_2000_a5
(r : ℝ)
(z : EuclideanSpace ℝ (Fin 2))
(p : Fin 3 → (EuclideanSpace ℝ (Fin 2)))
(rpos : r > 0)
(pdiff : ∀ n m : Fin 3, (n ≠ m) → (p n ≠ p m))
(pint : ∀ (n : Fin 3) (i : Fin 2), p n i = round (p n i))
(pcirc : ∀ n : Fin 3, p n ∈ Metric.sphere z r)
: ∃ n m : Fin 3, (n ≠ m) ∧ (dist (p n) (p m) ≥ r ^ ((1 : ℝ) / 3)) :=
sorry
