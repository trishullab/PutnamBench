Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot.
Definition putnam_1990_b5_solution := True.
Open Scope R.
Theorem putnam_1990_b5 
    (a : nat -> R) 
    (pn : nat -> R -> R := fun n x => sum_n (fun i => a i * pow x i) n)
    : forall (n: nat), gt n 0 -> exists (roots: Ensemble R), cardinal R roots n /\ forall (r: R), roots r <-> pn n r = 0 <->
    putnam_1990_b5_solution.
Proof. Admitted.
