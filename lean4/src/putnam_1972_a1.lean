import Mathlib
open BigOperators

open EuclideanGeometry Filter Topology Set

theorem putnam_1972_a1
(n : ℕ)
(hn : n > 0)
(fourAP : ℤ → ℤ → ℤ → ℤ → Prop := fun n1 n2 n3 n4 => ∃ o1 o2 o3 o4 : ℤ, {n1, n2, n3, n4} = ({o1, o2, o3, o4} : Set ℤ) ∧ o1 ≤ o2 ∧ o2 ≤ o3 ∧ o3 ≤ o4 ∧ o4-o3 = o3-o2 ∧ o3-o2 = o2-o1)
: ¬ ∃ r : ℕ, r > 0 ∧ r + 3 ≤ n ∧ fourAP (n.choose r) (n.choose (r+1)) (n.choose (r+2)) (n.choose (r+3)) :=
sorry
