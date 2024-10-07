From mathcomp Require Import all_ssreflect all_algebra fintype seq ssrbool.
From mathcomp Require Import reals normedtype.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Definition putnam_1967_a6_solution : nat := 8.
Theorem putnam_1967_a6
    (i0 : 'I_4) (idx : nat -> 'I_4 := fun i => nth i0 (ord_enum 4) i)
    (abneq0 : ('I_4 -> R) -> ('I_4 -> R) -> Prop := fun a b => a (idx 0%nat) * b (idx 1%nat) - a (idx 1%nat) * b (idx 0%nat) <> 0)
    (numtuples : ('I_4 -> R) -> ('I_4 -> R) -> nat)
    (hnumtuples : forall a b, [set s : 'I_4 -> R | exists x : 'I_4 -> R, 
                    (forall i, x i <> 0) 
                    /\ (\sum_(i : 'I_4) ((a i) * (x i)) = 0)
                    /\ (\sum_(i : 'I_4) ((b i) * (x i)) = 0)
                    /\ (forall i, s i = @Num.sg R (x i))] #= [set: 'I_(numtuples a b)])
    : ((exists a b, abneq0 a b /\ numtuples a b = putnam_1967_a6_solution) /\
       (forall a b, abneq0 a b -> (numtuples a b <= putnam_1967_a6_solution)%nat)).
Proof. Admitted.