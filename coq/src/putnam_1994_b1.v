Require Import Ensembles Finite_sets ZArith.
Open Scope Z.
Definition putnam_1994_b1_solution (n: Z) := 315 <= n <= 325 \/ 332 <= n <= 350.
Theorem putnam_1994_b1
    : forall (n: Z), exists (E: Ensemble Z), cardinal Z E 15 -> 
    forall (m: Z), E m -> Z.abs (m * m - n) <= 250 ->
    putnam_1994_b1_solution n.
Proof. Admitted.