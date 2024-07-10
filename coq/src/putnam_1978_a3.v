Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_a3_solution (a b c d: R) := b.
Theorem putnam_1978_a3
    (p : R -> R := fun x => 2 * (x ^ 6 + 1) + 4 * (x ^ 5 + x) + 3 * (x ^ 4 + x ^ 2) + 5 * x ^ 3)
    (a : R := Lim_seq (fun nInc => RInt (fun x => x / p x) 0 (INR nInc)))
    (b : R := Lim_seq (fun nInc => RInt (fun x => x ^ 2 / p x) 0 (INR nInc)))
    (c : R := Lim_seq (fun nInc => RInt (fun x => x ^ 3 / p x) 0 (INR nInc)))
    (d : R := Lim_seq (fun nInc => RInt (fun x => x ^ 4 / p x) 0 (INR nInc)))
    : Rmin a (Rmin b (Rmin c d)) = putnam_1978_a3_solution a b c d.
Proof. Admitted.
