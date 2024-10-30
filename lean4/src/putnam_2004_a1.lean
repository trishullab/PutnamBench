import Mathlib

open Nat Topology Filter

abbrev putnam_2004_a1_solution : Prop := sorry
-- True
/--
Basketball star Shanille O'Keal's team statistician keeps track of the number, $S(N)$, of successful free throws she has made in her first $N$ attempts of the season. Early in the season, $S(N)$ was less than $80\%$ of $N$, but by the end of the season, $S(N)$ was more than $80\%$ of $N$. Was there necessarily a moment in between when $S(N)$ was exactly $80\%$ of $N$?
-/
theorem putnam_2004_a1
  (S : (ℕ → Fin 2) → ℕ → ℝ)
  (hS : ∀ attempts, ∀ N ≥ 1, S attempts N = (∑ i : Fin N, (attempts i).1) / N) :
  (∀ attempts a b,
    (1 ≤ a ∧ a < b ∧ S attempts a < 0.8 ∧ S attempts b > 0.8) →
      (∃ c : ℕ, a < c ∧ c < b ∧ S attempts c = 0.8))
  ↔ putnam_2004_a1_solution :=
sorry
