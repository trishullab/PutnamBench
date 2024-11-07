import Mathlib

open Topology MvPolynomial Filter Set

/--
Show that every positive rational number can be written as a quotient of products of factorails of (not necessarily distinct) primes. For example, 10/9 = (2! * 5!)/(3! * 3! * 3!).
-/
theorem putnam_2009_b1
(isquotprodprimefact : ℚ → Prop)
(hisquotprodprimefact : ∀ q, isquotprodprimefact q ↔
  (∃ (k m : ℕ) (a : Fin k → ℕ) (b : Fin m → ℕ),
    (∀ i : Fin k, Nat.Prime (a i)) ∧ (∀ j : Fin m, Nat.Prime (b j))
    ∧ (q = (∏ i : Fin k, Nat.factorial (a i))/(∏ j : Fin m, Nat.factorial (b j)))))
: ∀ q : ℚ, q > 0 → isquotprodprimefact q :=
sorry
