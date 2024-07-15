Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2004_a4
    : forall (n: nat), exists (N: nat) (a: nat -> nat -> R) (c: R), (exists (p q: Z), c = IZR (p / q)) /\ (forall (i j: nat), a i j = -1 \/ a i j = 0 \/ a i j = 1) ->
    forall (x: list R), length x = n ->
    fold_left Rmult x 1 = sum_n (fun i => c * (sum_n (fun j => a i j * nth j x 0) n) ^ (1 / n)) N.
Proof. Admitted.