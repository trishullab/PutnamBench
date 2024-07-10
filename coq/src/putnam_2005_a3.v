Require Import Reals Coquelicot.Coquelicot. From Coqtail Require Import Cpow.
Theorem putnam_2005_a3
    (c : nat -> Z)
    (n : nat)
    (p := fun z : C => sum_n (fun i => IZR (c i) * Cpow z i) (n + 1))
    : forall (r: C), p r = 0 ->  r = RtoC (-1) /\ r = RtoC 1 ->
    let g (z: C) := p z / Cpow z (n / 2) in
    forall (r: C), g r = 0 ->  r = RtoC (-1) /\ r = RtoC 1.
Proof. Admitted.
