From mathcomp Require Import all_ssreflect ssrnum ssralg.
From mathcomp Require Import reals.
Import Order.TTheory GRing.Theory Num.Def Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1971_b6
    (delta : nat -> nat)
    (hdeltamax : forall x : nat, gt x 0 -> (forall t : nat, (t %| x) /\ odd t = true -> le t (delta x)))
    (hdeltasat : forall x : nat, gt x 0 -> ((delta x) %| x) /\ odd (delta x) = true)
    (sumdelta : nat -> R := fun x => \sum_(1 <= i < x.+1) ((delta i)%:R/(i%:R)))
    : forall x : nat, gt x 0 -> `| sumdelta x - 2 * (x%:R/3) | < 1.
Proof. Admitted.
