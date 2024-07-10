Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2020_a6_solution := PI / 4.
Theorem putnam_2020_a6 
    (f : Z -> (R -> R) := fun Nz : Z => fun x : R =>
        sum_n (fun n => let N := IZR Nz in let n := INR n in (N + 1 / 2 - n) / ((N + 1) * (2 * n + 1)) * sin ((2 * n + 1) * x)) (Z.to_nat Nz + 1))
    (M : R)
    (hM : forall (N: Z), Z.gt N 0 -> forall (x: R), f N x <= M)
    (hMlb : forall (n: R), (forall (N: Z), Z.gt N 0 -> forall (x: R), f N x <= n) -> n >= M)
    : M = putnam_2020_a6_solution.
Proof. Admitted.
