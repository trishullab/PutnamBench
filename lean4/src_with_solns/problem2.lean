import src.allimports
open BigOperators Real Nat Topology

/-- Prove that the sum of the first n odd numbers equals n². -/
theorem sum_of_odds (n : Nat) : (∑ k in Finset.range n, (2 * k + 1)) = n * n :=
by
induction n with
| zero =>
  simp
| succ d ih =>
  calc
    (∑ k in Finset.range (d + 1), (2 * k + 1))
        = (∑ k in Finset.range d, (2 * k + 1)) + (2 * d + 1) := by
          simp [Finset.sum_range_succ]
    _ = d * d + (2 * d + 1) := by rw [ih]
    _ = (d + 1) * (d + 1) := by ring
