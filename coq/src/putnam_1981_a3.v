Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1981_a3_solution := False.
Theorem putnam_1981_a3
    : (exists r : R, Lim (fun k => exp (-1*k) * (RInt (fun x => (RInt (fun y => (exp x - exp y) / (x - y)) 0 k)) 0 k)) p_infty = r) <-> putnam_1981_a3_solution.
Proof. Admitted.
