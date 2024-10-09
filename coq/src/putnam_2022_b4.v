From mathcomp Require Import all_ssreflect ssrint ssralg ssrnum.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2022_b4_solution : set nat := [set n | ge n 9 /\ 3%|n].
Theorem putnam_2022_b4
    (n : nat)
    (ap3 : R -> R -> R -> Prop)
    (xprog : (nat -> R) -> Prop)
    (hap3 : forall x0 x1 x2 : R, ap3 x0 x1 x2 <-> forall o0 o1 o2 : R, o0 < o1 < o2 -> [set x : R | x = o0 \/ x = o1 \/ x = o2] = [set x : R | x = x0 \/ x = x1 \/ x = x2] -> (o1 - o0 = o2 - o1))
    (hxprog : forall x, xprog x <->
        ((forall i j : nat, lt i n /\ lt j n /\ i <> j -> x i <> x j) /\ 
        forall i : nat, lt i n -> ap3 (x i) (x ((i.+1) %% n)) (x ((i.+2) %% n))))
    : exists x, xprog x <-> n \in putnam_2022_b4_solution.
Proof. Admitted.