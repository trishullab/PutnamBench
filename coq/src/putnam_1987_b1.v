Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1987_b1_solution := 1.
Theorem putnam_1987_b1
    : RInt (fun x => ln (9 - x) ^ (1/2) / ( ln (9 - x) ^ (1/2)  + ln (x + 3) ^ (1/2))) 2 4 = putnam_1987_b1_solution.
Proof. Admitted.
