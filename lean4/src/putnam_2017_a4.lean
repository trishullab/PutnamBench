import Mathlib

open Topology Filter

/--
A class with $2N$ students took a quiz, on which the possible scores were $0,1,\dots,10$. Each of these scores occurred at least once, and the average score was exactly $7.4$. Show that the class can be divided into two groups of $N$ students in such a way that the average score for each group was exactly $7.4$.
-/
theorem putnam_2017_a4
(N : ℕ)
(score : Fin (2 * N) → Fin 11)
(hsurj : ∀ k : Fin 11, ∃ i : Fin (2 * N), score i = k)
(havg : (∑ i : Fin (2 * N), (score i : ℝ)) / (2 * N) = 7.4)
: (∃ s : Finset (Fin (2 * N)), s.card = N ∧ (∑ i ∈ s, (score i : ℝ)) / N = 7.4 ∧ (∑ i ∈ sᶜ, (score i : ℝ)) / N = 7.4) :=
sorry
