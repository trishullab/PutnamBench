From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals complex derive topology normedtype.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem putnam_1999_b2
    (P Q : {poly R[i]})
    (hQ : size Q = 3%nat)
    (hP : forall x : R[i], P.[x] = Q.[x] * (P^`(2)).[x])
    : (exists x1 x2 : R[i], x1 <> x2 /\ P.[x1] = 0 /\ P.[x2] = 0) ->
        (exists f : seq R[i], size f = (size P).-1 /\ uniq f /\ all (fun x => P.[x] == 0) f).
Proof. Admitted.