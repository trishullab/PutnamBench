From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_2021_b4
    (F : nat -> nat)
    (hF01 : F 0 = 0 /\ F 1 = 1)
    (hF : forall n : nat, F (n.+2) = F (n.+1) + F n)
    : forall m : nat, m > 2 -> 
        exists p : nat, (\prod_(1 <= k < F m) k ^ k) = F p %[mod (F m)].
Proof. Admitted.
