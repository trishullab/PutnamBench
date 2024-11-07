import Mathlib

open Function Set

/--
Let $S$ be the set of all positive integers that are \emph{not} perfect squares. For $n$ in $S$, consider choices of integers
$a_1, a_2, \dots, a_r$ such that $n < a_1<  a_2 < \cdots < a_r$
and $n \cdot a_1 \cdot a_2 \cdots a_r$ is a perfect square, and
let $f(n)$ be the minumum of $a_r$ over all such choices. For example,
$2 \cdot 3 \cdot 6$ is a perfect square, while $2 \cdot 3$, $2 \cdot 4$,
$2 \cdot 5$, $2 \cdot 3 \cdot 4$, $2 \cdot 3 \cdot 5$, $2 \cdot 4 \cdot 5$, and $2 \cdot 3 \cdot 4 \cdot 5$ are not, and so $f(2) = 6$.
Show that the function $f$ from $S$ to the integers is one-to-one.
-/
theorem putnam_2013_a2
  (S : Set ℤ)
  (hS : S = {n : ℤ | n > 0 ∧ ¬∃ m : ℤ, m ^ 2 = n})
  (P : ℤ → List ℤ → Prop)
  (hP : ∀ n a, P n a ↔
    a.length > 0 ∧ n < a[0]! ∧
    (∃ m : ℤ, m ^ 2 = n * a.prod) ∧
    (∀ i : Fin (a.length - 1), a[i] < a[i+(1:ℕ)]))
  (T : ℤ → Set ℤ)
  (hT : T = fun n : ℤ => {m : ℤ | ∃ a : List ℤ, P n a ∧ a[a.length - 1]! = m})
  (f : ℤ → ℤ)
  (hf : ∀ n ∈ S, ((∃ r ∈ T n, f n = r) ∧ ∀ r ∈ T n, f n ≤ r)) :
  InjOn f S :=
sorry
