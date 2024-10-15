From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals trigo.
From mathcomp Require Import classical_sets.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_2006_a5_solution : nat -> int := fun n : nat => if n == 1 %[mod 4] then n%:Z else - n%:Z.
Theorem putnam_2006_a5
    (n : nat)
    (theta : R)
    (a : nat -> R)
    (nodd : odd n)
    (thetairr : ~ exists a b : int, b <> 0 /\ theta / pi = (a%:~R / b%:~R))
    (ha : forall k : nat, ge k 1 /\ ge n k -> a k = tan (theta + (k%:R * pi) / n%:R))
    : \sum_(1 <= k < n.+1) a k / \prod_(1 <= k < n.+1) a k = (putnam_2006_a5_solution n)%:~R.
Proof. Admitted.