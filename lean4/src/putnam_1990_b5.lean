import Mathlib

open Filter Polynomial Topology Nat

abbrev putnam_1990_b5_solution : Prop := sorry
-- True
/--
Is there an infinite sequence $a_0,a_1,a_2,\dots$ of nonzero real numbers such that for $n=1,2,3,\dots$ the polynomial $p_n(x)=a_0+a_1x+a_2x^2+\cdots+a_nx^n$ has exactly $n$ distinct real roots?
-/
theorem putnam_1990_b5 :
    (∃ a : ℕ → ℝ, (∀ i, a i ≠ 0) ∧
      (∀ n ≥ 1, (∑ i ∈ Finset.Iic n, a i • X ^ i : Polynomial ℝ).roots.toFinset.card = n)) ↔
    putnam_1990_b5_solution :=
  sorry
