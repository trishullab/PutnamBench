import Mathlib

open Filter Topology Real

/--
Suppose that each of $n$ people writes down the numbers $1,2,3$ in random order in one column of a $3 \times n$ matrix, with all orders equally likely and with the orders for different columns independent of each other. Let the row sums $a,b,c$ of the resulting matrix be rearranged (if necessary) so that $a \leq b \leq c$. Show that for some $n \geq 1995$, it is at least four times as likely that both $b=a+1$ and $c=a+2$ as that $a=b=c$.
-/
theorem putnam_1995_a6
(SM : (n : ℕ) → Set (Matrix (Fin 3) (Fin n) ℤ))
(Srowsums : (n : ℕ) → Matrix (Fin 3) (Fin n) ℤ → Set ℤ)
(sumsprog : (Set ℤ) → Prop)
(hSM : ∀ n, SM n = {M : Matrix (Fin 3) (Fin n) ℤ | ∀ j : Fin n, {M i j | i : Fin 3} = {1, 2, 3}})
(hSrowsums : ∀ n M, Srowsums n M = {∑ j : Fin n, M i j | i : Fin 3})
(hsumsprog : ∀ sums, sumsprog sums ↔ sums.encard = 3 ∧ (∃ a b c : ℤ, {a, b, c} = sums ∧ b = a + 1 ∧ c = a + 2))
: ∃ n ≥ 1995, {M : (SM n) | sumsprog (Srowsums n M)}.encard ≥ 4 * {M : (SM n) | (Srowsums n M).encard = 1}.encard :=
sorry
