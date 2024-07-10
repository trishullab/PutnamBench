Require Import Ensembles Finite_sets Rdefinitions Reals Rpower. From mathcomp Require Import  bigop div fintype ssralg ssrnat ssrnum. 
Definition putnam_2020_a1_solution := 508536.
Theorem putnam_2020_a1
    (A: Ensemble nat := fun n => (2020 %| n = true /\ 
        (Rle (Rlog (INR 10) (INR n) + R1) (INR 2020)) /\ 
        exists (k l: nat), k >= l = true /\ n = \sum_(i < k-l+1) 10^(i+l)))
    : cardinal nat A putnam_2020_a1_solution.
Proof. Admitted. 
