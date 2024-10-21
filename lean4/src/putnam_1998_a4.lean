import Mathlib

-- Note: Since 11 divides `x` iff it divides its base-10 reverse, the `reverse` below is optional.
abbrev putnam_1998_a4_solution : Set ℕ := sorry
-- {n | n ≡ 1 [MOD 6]}
/--
Let $A_1=0$ and $A_2=1$. For $n>2$, the number $A_n$ is defined by concatenating the decimal expansions of $A_{n-1}$ and $A_{n-2}$ from left to right.  For example $A_3=A_2 A_1=10$, $A_4=A_3 A_2 = 101$, $A_5=A_4 A_3 = 10110$, and so forth.  Determine all $n$ such that $11$ divides $A_n$.
-/
theorem putnam_1998_a4
    (A : ℕ → List ℕ)
    (hA1 : A 1 = [0])
    (hA2 : A 2 = [1])
    (hA : ∀ n > 0, A (n + 2) = A (n + 1) ++ A n) :
    {n | 1 ≤ n ∧ 11 ∣ Nat.ofDigits 10 (A n).reverse} = putnam_1998_a4_solution :=
  sorry
