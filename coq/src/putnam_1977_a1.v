From mathcomp Require Import all_algebra all_ssreflect fintype.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1977_a1_solution : R := -7/8.
Theorem putnam_1977_a1
    (y : R -> R := fun x => 2 * x ^+ 4 + 7 * x ^+ 3 + 3 * x - 5)
    (pts : seq R)
    (hpts : size pts = 4%nat /\ uniq pts)
    (hcollinear : exists (m b : R), all (fun x => y x == m * x + b) pts)
    : (\sum_(x <- pts) x) / 4 = putnam_1977_a1_solution.
Proof. Admitted.