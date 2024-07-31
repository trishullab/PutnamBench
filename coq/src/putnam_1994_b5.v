Require Import Basics ZArith Zpower Reals Coquelicot.Coquelicot.
Open Scope Z_scope.
Theorem putnam_1994_b5
    (composen := fix compose_n {A: Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    (fa : R -> Z -> Z := fun a x => floor (a * IZR x))
    : forall (n: Z), n > 0 -> exists (a: R), forall (k: Z), 1 <= k <= n -> (composen (fa a) (Z.to_nat k)) n^2 = n^2 - k /\ n^2 - k = fa (Rpower a (IZR k)) n^2.
Proof. Admitted.
