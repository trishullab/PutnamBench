Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1983_a6_solution := 2 / 9.
Theorem putnam_1983_a6
    : Lim_seq (fun a => let a := INR a in a ^ 4 * exp (-a ^ 3) * RInt (fun x => RInt (fun y => exp (x ^ 3 + y ^ 3)) 0 (a - x)) 0 a) = putnam_1983_a6_solution.
Proof. Admitted.
