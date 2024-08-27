From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1979_a3_solution : (R*R)%type -> Prop := fun '(a, b) => exists m : int, a = m%:~R /\ b = m%:~R.
Theorem putnam_1979_a3
    (x : R ^nat)
    (hx : forall n : nat, x n <> 0 /\ (ge n 3 -> x n = (x (n.-2)) * (x (n.-1))/(2 * (x (n.-2)) - (x (n.-1)))))
    : (forall m : nat, exists n : nat, gt n m /\ (exists a : int, x n = a%:~R)) <-> putnam_1979_a3_solution (x 1%nat, x 2%nat).
Proof. Admitted.