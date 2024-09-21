From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1972_a5
    (n : nat)
    (hn : gt n 1)
    : ~~(n%:Z %| 2 ^+ n - 1)%Z.
Proof. Admitted.
