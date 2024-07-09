import Mathlib
open BigOperators

open EuclideanGeometry Filter Topology Set

theorem putnam_1972_a2
: (∀ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) → (∀ x y : S, x * y = y * x)) ∧ ∃ (S : Type*) (_ : Mul S), (∀ x y : S, x * (x * y) = y ∧ ((y * x) * x) = y) ∧ ¬(∀ x y z : S, x * (y * z) = (x * y) * z) :=
sorry
