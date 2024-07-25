Require Import Ensembles Finite_sets ZArith.
Open Scope Z.
Definition putnam_1994_b1_solution (n: Z) := 315 <= n <= 325 \/ 332 <= n <= 350.
Theorem putnam_1994_b1
    (n : Z)
    (nwithin : Prop := cardinal nat (fun m => Z.abs (n - (Z.of_nat m) ^ 2) <= 250) 15)
    : (n > 0 /\ nwithin) <-> putnam_1994_b1_solution n.
Proof. Admitted.