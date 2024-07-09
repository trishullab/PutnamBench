import Mathlib
open BigOperators

open Topology Filter Matrix

theorem putnam_2011_b4
(games : Fin 2011 → Fin 2011 → Bool)
(T : Matrix (Fin 2011) (Fin 2011) ℂ := (fun p1 p2 : Fin 2011 => {g : Fin 2011 | games g p1 = games g p2}.ncard))
(W : Matrix (Fin 2011) (Fin 2011) ℂ := (fun p1 p2 : Fin 2011 => {g : Fin 2011 | games g p1 ∧ !games g p2}.ncard - {g : Fin 2011 | !games g p1 ∧ games g p2}.ncard))
: ∃ n : ℕ, (T + Complex.I • W).det = n ∧ (2 ^ 2010) ∣ n :=
sorry
