Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1981_a3_solution := 14.
Theorem putnam_1981_a3
    : Lim_seq (fun k => exp (-1*INR k) * (RInt (fun x => (RInt (fun y => (exp x - exp y) / (x - y)) 0 (INR k))) 0 (INR k))) = putnam_1981_a3_solution.
Proof. Admitted.
