import Mathlib

open Nat Real

/--
Let $f(n) = n + [\sqrt n]$, where $[x]$ denotes the greatest integer less than or equal to $x$. Define the sequence $a_i$ by $a_0 = m$, $a_{n+1} = f(a_n)$. Prove that it contains at least one square.
-/
theorem putnam_1983_b4
    (f : ℕ → ℤ)
    (a : ℕ → ℕ)
    (hf : f = fun (n : ℕ) ↦ n + Int.floor (√n))
    (ha0 : a 0 > 0)
    (han : ∀ n : ℕ, a (n + 1) = f (a n)) :
    (∃ i : ℕ, ∃ s : ℤ, a i = s ^ 2) :=
  sorry
