import Mathlib

open Finset Function

/--
Alice and Bob play a game with a string of $n$ digits, each of which is restricted
to be 0, 1, or 2. Initially all the digits are 0. A legal move is to add or subtract 1
from one digit to create a new string that has not appeared before. A player with no
legal move loses, and the other player wins. Alice goes first, and the players alternate
moves. For each $n \ge 1$, determine which player has a strategy that guarantees winning.
-/

abbrev GameString (n : ℕ) := Fin n → Fin 3

abbrev initialState (n : ℕ) : GameString n := fun _ => 0

abbrev isValidMove {n : ℕ} (s1 s2 : GameString n) : Prop :=
  (∃! i : Fin n, s1 i ≠ s2 i) ∧
  ∀ i : Fin n, s1 i ≠ s2 i →
    ((s1 i).val + 1 = (s2 i).val ∨ (s2 i).val + 1 = (s1 i).val)

abbrev IsValidGamePlay {n : ℕ} (play : List (GameString n)) : Prop :=
  play.Chain isValidMove (initialState n) ∧
  (initialState n :: play).Nodup

inductive HasWinningStrategy (n : ℕ) : List (GameString n) → Prop where
  | win (play : List (GameString n)) (s : GameString n) :
      IsValidGamePlay (play ++ [s]) →
      (∀ s', IsValidGamePlay (play ++ [s, s']) → HasWinningStrategy n (play ++ [s, s'])) →
      HasWinningStrategy n play

abbrev AliceHasWinningStrategy (n : ℕ) : Prop := HasWinningStrategy n []

abbrev putnam_2025_a3_solution : ℕ → Prop := sorry
-- fun _ => False

theorem putnam_2025_a3 (n : ℕ) (hn : 1 ≤ n) :
    putnam_2025_a3_solution n ↔ AliceHasWinningStrategy n := by
  sorry
