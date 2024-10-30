import Mathlib

open Topology MvPolynomial Filter Set Metric

/--
Prove that for every positive integer $n$, there is a sequence of integers $a_0, a_1, \dots, a_{2009}$ with $a_0 = 0$ and $a_{2009} = n$ such that each term after $a_0$ is either an earlier term plus $2^k$ for some nonnegative integer $k$, or of the form $b\,\mathrm{mod}\,c$ for some earlier positive terms $b$ and $c$. [Here $b\,\mathrm{mod}\,c$ denotes the remainder when $b$ is divided by $c$, so $0 \leq (b\,\mathrm{mod}\,c) < c$.]
-/
theorem putnam_2009_b6
  (n : ℕ) (npos : n > 0) :
  (∃ a : ℕ → ℤ,
    a 0 = 0 ∧ a 2009 = n ∧
    ∀ i : Icc 1 2009,
      ((∃ j k : ℕ, j < i ∧ a i = a j + 2 ^ k) ∨
      ∃ b c : ℕ, b < i ∧ c < i ∧ a b > 0 ∧ a c > 0 ∧ a i = (a b) % (a c))) :=
sorry
