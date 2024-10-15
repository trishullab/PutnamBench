From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals normedtype sequences topology.
From mathcomp Require Import classical_sets.
Import numFieldNormedType.Exports.
Import Order.TTheory GRing.Theory Num.Theory.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope classical_set_scope.

Variable R : realType.
Definition putnam_1965_b4_solution : ((((R -> R) -> (R -> R)) * ((R -> R) -> (R -> R))) * ((set R) * (R -> R))) := 
((fun h : R -> R => (fun x : R => h x + x), fun h : R -> R => (fun x => h x + 1)), ([set x : R | x >= 0], @Num.sqrt R)).
Theorem putnam_1965_b4
    (f u v : nat -> R -> R)
    (hu : forall n : nat, gt n 0 -> forall x : R, u n x = \sum_(0 <= i < n%/2 .+1) ('C(n, 2 * i)%:R * x^i))
    (hv : forall n : nat, gt n 0 -> forall x : R, v n x = \sum_(0 <= i < (n.-1)%/2 .+1) ('C(n, 2 * (i.+1))%:R * x^i))
    (hf : forall n : nat, gt n 0 -> forall x : R, f n x = u n x / v n x)
    (n : nat)
    (hn : gt n 0)
    (f_seq : R -> (nat -> R) := fun (x : R) => fun (m : nat) => f m x) :
    let '((p, q), (s, g)) := putnam_1965_b4_solution in
        (forall x : R, v n x <> 0 -> v (n.+1) x <> 0 -> q (f n) x <> 0 -> f (n.+1) x = p (f n) x / q (f n) x) /\
        s = [set x : R | exists l : R, f_seq x @ \oo --> l] /\
        (forall x : R, x \in s -> (f_seq x) @ \oo --> g x).
Proof. Admitted.