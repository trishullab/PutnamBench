import Mathlib

open Topology Filter Matrix

/--
In a tournament, $2011$ players meet $2011$ times to play a multiplayer game. Every game is played by all $2011$ players together and ends with each of the players either winning or losing. The standings are kept in two $2011 \times 2011$ matrices, $T=(T_{hk})$ and $W=(W_{hk})$. Initially, $T=W=0$. After every game, for every $(h,k)$ (including for $h=k$), if players $h$ and $k$ tied (that is, both won or both lost), the entry $T_{hk}$ is increased by $1$, while if player $h$ won and player $k$ lost, the entry $W_{hk}$ is increased by $1$ and $W_{kh}$ is decreased by $1$. Prove that at the end of the tournament, $\det(T+iW)$ is a non-negative integer divisible by $2^{2010}$.
-/
theorem putnam_2011_b4
(games : Fin 2011 → Fin 2011 → Bool)
(T W : Matrix (Fin 2011) (Fin 2011) ℂ)
(hT : T = (fun p1 p2 => ({g | games g p1 = games g p2}.ncard : ℂ)))
(hW : W = (fun p1 p2 => ({g | games g p1 ∧ !games g p2}.ncard - {g | !games g p1 ∧ games g p2}.ncard : ℂ)))
: ∃ n : ℕ, (T + Complex.I • W).det = n ∧ (2 ^ 2010) ∣ n :=
sorry
