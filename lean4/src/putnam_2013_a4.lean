import Mathlib

open Function Set

/--
A finite collection of digits $0$ and $1$ is written around a circle. An \emph{arc} of length $L \geq 0$ consists of $L$ consecutive digits around the circle. For each arc $w$, let $Z(w)$ and $N(w)$ denote the number of $0$'s in $w$ and the number of $1$'s in $w$, respectively. Assume that $|Z(w)-Z(w')| \leq 1$ for any two arcs $w,w'$ of the same length. Suppose that some arcs $w_1,\dots,w_k$ have the property that $Z=\frac{1}{k}\sum_{j=1}^k Z(w_j)$ and $N=\frac{1}{k}\sum_{j=1}^k N(w_j)$ are both integers. Prove that there exists an arc $w$ with $Z(w)=Z$ and $N(w)=N$.
-/
theorem putnam_2013_a4
(n k : ℕ)
(circle : Fin n → Fin 2)
(Z N : Fin n × Fin (n + 1) → ℤ)
(ws : Fin k → Fin n × Fin (n + 1))
(Zsum Nsum : ℤ)
(npos : n ≥ 1) (kpos : k ≥ 1)
(hZ : ∀ w, Z w = ∑ l : {x : Fin n | x < w.2}, if (circle (w.1 + l) = 0) then 1 else 0)
(hN : ∀ w, N w = ∑ l : {x : Fin n | x < w.2}, if (circle (w.1 + l) = 1) then 1 else 0)
(Zle1 : ∀ w w', w.2 = w'.2 → |(Z w : ℤ) - Z w'| ≤ 1)
(hZsum : Zsum = ((1 : ℝ) / k) * ∑ j : Fin k, Z (ws j))
(hNsum : Nsum = ((1 : ℝ) / k) * ∑ j : Fin k, N (ws j)) :
∃ w, Z w = Zsum ∧ N w = Nsum :=
sorry
