From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope nat_scope.

Theorem putnam_1977_a5
    (p n m : nat)
    (hp : prime p)
    (hmgen : ge m n)
    : 'C(mult p m, mult p n) = 'C(m, n) %[mod p].
Proof. Admitted.