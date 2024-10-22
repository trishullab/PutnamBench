import Mathlib

/--
Let $\mathcal{P}_n$ be the set of subsets of $\{1,2,\dots,n\}$. Let $c(n,m)$ be the number of functions $f:\mathcal{P}_n \to \{1,2,\dots,m\}$ such that $f(A \cap B)=\min\{f(A),f(B)\}$. Prove that $c(n,m)=\sum_{j=1}^m j^n$.
-/
theorem putnam_1993_a3
(c : ℕ → ℕ → ℕ)
(hc : ∀ n ≥ 1, ∀ m ≥ 1, c n m = {f : Finset (Fin n) → Fin m | ∀ A B : Finset (Fin n), f (A ∩ B) = min (f A) (f B)}.encard)
: ∀ n ≥ 1, ∀ m ≥ 1, c n m = ∑' j : Set.Icc 1 m, (j : ℤ) ^ n :=
sorry
