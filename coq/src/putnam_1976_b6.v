From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_1976_b6
(sigma : nat -> int := fun N => \sum_(d <- divisors N) d)
: forall N : nat, sigma N = (N.*2 + 1) -> (exists m : nat, odd m = true /\ N = m ^ 2).
Proof. Admitted.