From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_1983_a3
    (p : nat)
    (F : nat -> nat)
    (poddprime : odd p = true /\ prime p)
    (hF : forall n : nat, F n = \sum_(0 <= i < p-1) ((i.+1) * n ^ i))
    : forall a b : nat, 1 <= a <= p /\ 1 <= b <= p /\ a <> b -> ~ (F a = F b %[mod p]).
Proof. Admitted.