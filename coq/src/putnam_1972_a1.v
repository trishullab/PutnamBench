From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1972_a1
    (n : nat)
    (hn : gt n 0)
    (fourAP : int -> int -> int -> int -> Prop := fun n1 n2 n3 n4 : int => (n4-n3 = n3-n2 /\ n3-n2 = n2-n1))
    : ~(exists r : nat, gt r 0 /\ le (r + 3) n /\ fourAP (binomial n r) (binomial n (r+1)) (binomial n (r+2)) (binomial n (r+3))).
Proof. Admitted.
