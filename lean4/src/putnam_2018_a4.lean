import Mathlib

-- Note: uses (ℕ → ℕ) instead of (Set.Icc 1 n → ℕ)
/--
Let $m$ and $n$ be positive integers with $\gcd(m,n)=1$, and let $a_k=\left\lfloor \frac{mk}{n} \right\rfloor - \left\lfloor \frac{m(k-1)}{n} \right\rfloor$ for $k=1,2,\dots,n$. Suppose that $g$ and $h$ are elements in a group $G$ and that $gh^{a_1}gh^{a_2} \cdots gh^{a_n}=e$, where $e$ is the identity element. Show that $gh=hg$. (As usual, $\lfloor x \rfloor$ denotes the greatest integer less than or equal to $x$.)
-/
theorem putnam_2018_a4
(m n : ℕ)
(a : ℕ → ℤ)
(G : Type*) [Group G]
(g h : G)
(mnpos : m > 0 ∧ n > 0)
(mngcd : Nat.gcd m n = 1)
(ha : ∀ k : Set.Icc 1 n, a k = Int.floor (m * k / (n : ℝ)) - Int.floor (m * ((k : ℤ) - 1) / (n : ℝ)))
(ghprod : ((List.Ico 1 (n + 1)).map (fun k : ℕ => g * h ^ (a k))).prod = 1)
: g * h = h * g :=
sorry
