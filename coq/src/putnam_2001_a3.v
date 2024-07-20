Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2001_a3_solution (m: Z) := exists (n: Z), m = Z.mul n n \/ m = Z.mul 2 (Z.mul n n).
Theorem putnam_2001_a3
    (P : Z -> R -> R := fun m x => x ^ 4 - (2 * IZR m + 4) * x ^ 2 + (IZR m - 2) ^ 2)
    (p : (nat -> Z) -> R -> nat -> R := fun a x n => sum_n (fun i => IZR (a i) * x ^ i) n)
    : forall (m: Z), exists (a1 a2: nat -> Z) (n1 n2: nat), forall (x: R), P m x = p a1 x n1 * p a2 x n2 <-> putnam_2001_a3_solution m.
Proof. Admitted.
