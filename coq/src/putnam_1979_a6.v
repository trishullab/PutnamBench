From mathcomp Require Import all_algebra all_ssreflect fintype.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1979_b6
    (p : seq R)
    (hp : all (fun x => 0 <= x <= 1) p)
    : exists x : R, 0 <= x <= 1 /\ (all (fun i => x != i) p) /\ (\sum_(i <- p) 1/`|x - i|) <= 8*(size p)%:R*(\sum_(0 <= i < (size p).+1) (1%R)/(2*(i%:R) + 1)).
Proof. Admitted.