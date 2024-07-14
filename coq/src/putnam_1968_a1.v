Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1968_a1
    : 22 / 7 - PI = RInt (fun x : R => x ^ 4 * (1 - x) ^ 4 / (1 + x ^ 2)) 0 1.
Proof. Admitted.
