From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.
From mathcomp Require Import classical_sets cardinality.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.
Local Open Scope card_scope.

Variable R : realType.
Definition putnam_2018_b4_solution : set (int * int) := [set v | exists b : int, 0 <= b <= 100 /\ (exists k : int, b = 2 * k) /\ v = (1,b)].
Theorem putnam_2018_b1
    (P : set (int * int) := [set v' | 0 <= v'.1 <= 2 /\ 0 <= v'.2 <= 100])
    (v : int * int)
    (Pvdiff : set (int * int) := [set v' | v' \in P /\ v' != v])
    : (v \in P /\ (exists Q R : set (int * int), 
        Q `|` R = Pvdiff /\ Q `&` R = set0 /\ Q #= R /\
        \sum_(i <- iota 0 3) (\sum_(j <- iota 0 101) (if (i%:Z, j%:Z) \in Q then i%:Z else 0)) = \sum_(i <- iota 0 3) (\sum_(j <- iota 0 101) (if (i%:Z, j%:Z) \in R then i%:Z else 0)) /\
        \sum_(i <- iota 0 3) (\sum_(j <- iota 0 101) (if (i%:Z, j%:Z) \in Q then j%:Z else 0)) = \sum_(i <- iota 0 3) (\sum_(j <- iota 0 101) (if (i%:Z, j%:Z) \in R then j%:Z else 0))))
    <-> v \in putnam_2018_b4_solution.
Proof. Admitted.