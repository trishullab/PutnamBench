import Mathlib
open BigOperators

open Metric Set EuclideanGeometry Filter Topology

theorem putnam_1970_b5
(ramp : ℤ → (ℝ → ℝ) := fun n => (fun x => if x ≤ -n then -n else (if -n < x ∧ x ≤ n then x else n)))
(F : ℝ → ℝ)
: Continuous F ↔ (∀ n : ℕ, Continuous ((ramp n) ∘ F)) :=
sorry
