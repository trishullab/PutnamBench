From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals sequences exp normedtype signed.
Import Order.TTheory GRing.Theory Num.Def Num.Theory.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Theorem putnam_1974_b5
    (f : nat -> R := fun n => (\sum_(0 <= i < n.+1) (n%:R) ^ i / ((i`!)%:R)))
    : forall n : nat, f n > (expR n%:R) / 2%R.
Proof. Admitted.
