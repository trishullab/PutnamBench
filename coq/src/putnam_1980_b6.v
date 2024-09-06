From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1980_b6
(G : (int * int)%type -> rat)
(hG : forall d n : nat, leq d n -> ((d = 1%nat -> G (d%:Z, n%:Z) = (1%:Q)/(n%:Q)) /\ (gtn d (1%nat) -> G (d%:Z, n%:Z) = ((d%:Z%:Q)/(n%:Z%:Q)) * \sum_(d <= i < n.+1) (G (d%:Z - 1, i%:Z - 1)))))
: forall (d p : nat), (ltn (1%nat) d /\ leq d p /\ prime p) -> ~ (p%:Z %| (denq (G (d%:Z, p%:Z))))%Z.
Proof. Admitted.

