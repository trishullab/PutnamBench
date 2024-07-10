Require Import Nat Factorial ZArith. From mathcomp Require Import fintype ssralg ssrnat ssrnum poly polydiv. 
Open Scope ring_scope.
Theorem putnam_2022_b1 
    (R : numDomainType)
    (n : nat)
    (a : nat -> Z)
    (ha1 : Z.odd (a 1%nat) = true)
    (p : {poly R} := \sum_(i < n) (if (0 <? (a i))%Z then ((Z.to_nat (a i))%:R *: 'X^i) else((Z.to_nat (a i))%:R *: -'X^i)) )
    (b : {poly R} := \sum_(i < n) (iter n (comp_poly p) 1) / (fact n)%:R)
    : forall (i: nat), b`_i <> 0.
Proof. Admitted. 
