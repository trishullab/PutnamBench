Require Import ZArith. From mathcomp Require Import fintype ssralg ssrnat ssrnum poly polydiv.
Open Scope ring_scope.
Definition putnam_1963_b1_solution : Z := 2.
Theorem putnam_1963_b1
    (R : numDomainType)
    (ZtoR : Z -> {poly R} := fun a => if (0 <=? a)%Z then (Z.to_nat a)%:R else -(Z.to_nat (-a))%:R)
    : (forall a : Z, ('X^2 - 'X + ZtoR a) %| ('X^13 + 'X + 90%:R) = true <-> a = putnam_1963_b1_solution).
Proof. Admitted.

