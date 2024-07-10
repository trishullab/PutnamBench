Require Import Basics ZArith Zpower Reals Coquelicot.Coquelicot.
Theorem putnam_1994_b5
    (composen := fix compose_n {A: Type} (f : A -> A) (n : nat) :=
        match n with
        | O => fun x => x
        | S n' => compose f (compose_n f n')
    end)
    (fa : R -> R -> R := fun a x => IZR (floor (a * x)))
    : forall (n: Z), Z.gt n 0 ->
    exists (a: R), forall (k: Z), and (Z.ge 1 k) (Z.ge k n) -> (composen (fa a) (Z.to_nat k)) (IZR (Z.pow n 2)) = IZR (Z.pow n 2 - k) /\ IZR (Z.pow n 2 - k) = fa (Rpower a (IZR k)) (IZR (Z.pow n 2)).
Proof. Admitted.
