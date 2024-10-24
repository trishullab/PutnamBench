From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_2003_b3
    (n : nat)
    : n `! = \prod_(1 <= i < n.+1) (foldl (fun x y => lcmn x y) 1%nat (iota 1 (n%/i))).
Proof. Admitted.