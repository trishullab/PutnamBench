import Mathlib
open BigOperators

open Function Set

/--
Let $X=\{1,2,\dots,n\}$, and let $k \in X$. Show that there are exactly $k \cdot n^{n-1}$ functions $f:X \to X$ such that for every $x \in X$ there is a $j \geq 0$ such that $f^{(j)}(x) \leq k$. [Here $f^{(j)}$ denotes the $j$\textsuperscript{th} iterate of $f$, so that $f^{(0)}(x)=x$ and $f^{(j+1)}(x)=f(f^{(j)}(x))$.]
-/
theorem putnam_2013_b5
(n : ℕ)
(k : Set.Icc 1 n)
(fiter : (Set.Icc 1 n → Set.Icc 1 n) → Prop)
(npos : n ≥ 1)
(hfiter : ∀ f : Set.Icc 1 n → Set.Icc 1 n, fiter f = ∀ x : Set.Icc 1 n, ∃ j : ℕ, f^[j] x ≤ k)
: {f : Set.Icc 1 n → Set.Icc 1 n | fiter f}.encard = k * n ^ (n - 1) :=
sorry
