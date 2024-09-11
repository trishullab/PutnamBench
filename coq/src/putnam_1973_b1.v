From mathcomp Require Import all_algebra all_ssreflect boolp.
Import Order.TTheory GRing.Theory Num.Def Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Theorem putnam_1973_b1
    (n : nat)
    (a : seq int)
    (ha : size a = (n.*2).+1)
    (h_remove : forall s : seq int, subseq s a -> size s = n.*2 -> exists t : seq int, subseq t s /\ size t = n /\ 2 * (\sum_(i <- t) i) = \sum_(i <- s) i)
    : all (fun i => all (fun j => i == j) a) a.
Proof. Admitted.