Require Import Nat QArith Reals. From mathcomp Require Import seq ssrnat ssrnum ssralg poly. 
Open Scope ring_scope.
Theorem putnam_2017_a2
    (Q := fix q (n: nat) (x: R) : R :=
        match n with
        | O => R1
        | S O => x
        | S ((S n'') as n') => Rdiv (Rminus (Rmult (q n' x) (q n' x)) 1) (q n'' x)
    end)
    : forall (n: nat), ge n 0 -> 
    exists (R : numDomainType) (p : {poly R}) (i : nat), (exists (z : Z), p`_i = if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) /\
    exists (z : Z), forall (x: RbaseSymbolsImpl.R), Q n x = IZR z /\ (if (Z.ltb z 0) then -(Z.to_nat z)%:R else (Z.to_nat z)%:R) = p.[n%:R].
Proof. Admitted.
