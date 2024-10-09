From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Definition putnam_2021_a6_solution : Prop := True.
Theorem putnam_2021_a6
    (Pcoeff Pprod : {poly int} -> Prop)
    (hPcoeff : forall P, Pcoeff P <-> forall n : nat, (P`_n = 0) \/ (P`_n = 1))
    (hPprod : forall P, Pprod P <-> (exists Q R : {poly int}, (gt (size Q) 1) /\ (gt (size R) 1) /\ P = Q * R))
    : (forall P, (Pcoeff P /\ Pprod P) -> (P.[2] <> 0 /\ P.[2] <> 1 /\ (~ exists k : int, 2 <= k < P.[2] /\ (k%|P.[2])%Z))).
Proof. Admitted.