From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1986_a6_solution : (nat -> nat) -> nat -> R := fun b n => (\prod_(1 <= i < n.+1) (b i)%:R) / n`!%:R.
Theorem putnam_1986_a6
    (n : nat)
    (npos : gt n 0)
    (a : nat -> R)
    (b : nat -> nat)
    (bpos : forall i : nat, lt i n /\ gt n 0 -> gt (b i) 0)
    (binj : forall i j : nat, lt i n /\ lt j n /\ gt i 0 /\ gt j 0 -> (b i = b j -> i = j))
    (f : {poly R})
    (hf : forall x : R, (1 - x) ^ n * f.[x] = 1 + \sum_(1 <= i < n.+1) ((a i) * x ^ (b i)))
    : f.[1] = putnam_1986_a6_solution b n.
Proof. Admitted.