import src.allimports
open BigOperators Real Nat Topology

/-- Prove that the sum of the first n odd numbers equals n². -/
theorem sum_of_odds (n : Nat) : (∑ k in Finset.range n, (2 * k + 1)) = n * n :=
sorry
