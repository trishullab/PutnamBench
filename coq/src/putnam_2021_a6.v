Require Import ZArith Znumtheory. From mathcomp Require Import seq ssrnat ssrnum ssralg poly prime. 
Open Scope ring_scope.
Definition putnam_2021_a6_solution := True.
Theorem putnam_2021_a6
    (R : numDomainType) 
    (p : {poly R}) 
    (a := forall i : nat, p`_i = 0 /\ p`_i = 1)
    (ha : exists (q r: {poly R}), size p <> 0%nat /\ size q <> 0%nat -> p = q * r)
    : exists q r, q <> 1 /\ r <> 1 /\ (horner p 2) = q * r <-> putnam_2021_a6_solution.
Proof. Admitted. 
