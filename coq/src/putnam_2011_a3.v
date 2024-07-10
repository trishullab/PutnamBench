Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2011_a3_solution := (-1, 2 / PI).
Theorem putnam_2011_a3
    (c L: R)
    (hL : L > 0)
    : Lim_seq (fun r => (Rpower (INR r) c * RInt (fun x => x ^ r * sin x) 0 PI / 2) / (RInt (fun x => x ^ r * cos x) 0 PI / 2)) = L <-> (c, L) = putnam_2011_a3_solution.
Proof. Admitted.
