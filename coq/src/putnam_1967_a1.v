From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals normedtype trigo.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1967_a1
    (n : nat)
    (hn : gt n 0)
    (a : 'I_n -> R)
    (f : R -> R := fun x : R => \sum_(i : 'I_n) (a i) * sin (i%:R * x))
    (flesin : forall x : R, `|f x| <= `|sin x|)
    : `|\sum_(i : 'I_n) (i%:R * (a i))| <= 1.
Proof. Admitted.