From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_2019_b5_solution : nat * nat := (2019%nat, 1010%nat).
Theorem putnam_2019_b5
    (F : nat -> int)
    (P : {poly R})
    (hF : forall x : nat, ge x 1 -> F (x.+2) = F (x.+1) + F x)
    (F12 : F 1%nat = 1 /\ F 2%nat = 1)
    (Pdeg : size P = 1009%nat)
    (hp : forall n : nat, (le n 1008) -> P.[2 * (n%:R) + 1] = (F ((n.*2).+1))%:~R)
    : forall j k : nat, (P.[2019] = (F j - F k)%:~R) <-> (j, k) = putnam_2019_b5_solution.
Proof. Admitted.
