From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1975_a1_solution : ((int * int) -> int) * ((int * int) -> int) := (fun '(a, b) => a + b + 1, fun '(a, b) => a - b).
Theorem putnam_1975_a1
    (nab : set (int * int * int) := [set nab | let '(n, a, b) := nab in n = (a%:~R ^+ 2 + a%:~R)/2 + (b%:~R ^+ 2 + b%:~R)/2])
    (nxy : set (int * int * int) := [set nxy | let '(n, x, y) := nxy in 4 * n + 1 = x ^+ 2 + y ^+ 2])
    : (forall n a b : int, nab (n, a, b) <-> nxy (n, putnam_1975_a1_solution.1 (a, b), putnam_1975_a1_solution.2 (a, b))) /\
      forall n : int, (exists x y : int, nxy (n, x, y)) -> exists a b : int, nab (n, a, b).
Proof. Admitted.
