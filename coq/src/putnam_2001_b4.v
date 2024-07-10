Require Import Basics List QArith. From mathcomp Require Import bigop fintype seq ssrbool ssreflect ssrnat ssrnum ssralg    finfun. 
Open Scope Q_scope.
Definition putnam_2001_b4_solution := False.
Definition image (f: Q -> Q) := fun y => exists(x: Q), f x = y.
Fixpoint compose_n {A : Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
end.
Theorem putnam_2001_b4
    (f : Q -> Q := fun x => x - 1 / x)
    : exists (x: Q), ~ In x [:: -1; 0; 1] -> forall (n: nat), (image (compose_n f n)) x <-> putnam_2001_b4_solution.
Proof. Admitted.
