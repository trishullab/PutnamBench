import Mathlib

open EuclideanGeometry Filter Topology Set

/--
Show that there are no four consecutive binomial coefficients ${n \choose r}, {n \choose (r+1)}, {n \choose (r+2)}, {n \choose (r+3)}$ where $n,r$ are positive integers and $r+3 \leq n$, which are in arithmetic progression.
-/
theorem putnam_1972_a1
    (n : ℕ) (hn : n > 0)
    (fourAP : ℤ → ℤ → ℤ → ℤ → Prop)
    (hfourAP : ∀ n1 n2 n3 n4, fourAP n1 n2 n3 n4 ↔ n4-n3 = n3-n2 ∧ n3-n2 = n2-n1) :
    ¬ ∃ r : ℕ, r > 0 ∧ r + 3 ≤ n ∧ fourAP (n.choose r) (n.choose (r+1)) (n.choose (r+2)) (n.choose (r+3)) :=
  sorry
