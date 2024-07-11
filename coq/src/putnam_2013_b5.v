Require Import Basics Reals Ensembles Finite_sets. From mathcomp Require Import fintype.
Theorem putnam_2013_b5
    (n : nat)
    (composen := fix compose_n (f : 'I_n -> 'I_n) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    (k : 'I_n)
    (E : Ensemble ('I_n -> 'I_n) := fun f => forall (x : 'I_n), exists (j : nat), (composen f j) x <= k)
    : cardinal ('I_n -> 'I_n) E (k * n^(n-1)).
Proof. Admitted.
