From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1973_b3
    (p : nat)
    (hp : gt p 1)
    (hprime : forall x : nat, ge x 0 -> lt x p -> prime (x^2 - x + p))
    : exists! triple : int * int * int, 
      let '(a, b, c) := triple in 
      (b^2 - 4*a*c = 1 - 4 * (p%:Z) /\ 0 < a <= c /\ -a <= b < a).
Proof. Admitted.