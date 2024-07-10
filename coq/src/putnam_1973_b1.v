Require Import Basics Nat Reals Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Theorem putnam_1973_b1
    (n : nat)
    (a : nat -> Z)
    (U : Ensemble nat)
    (hU : cardinal _ U (2 * n + 1))
    (hpres : Ensemble nat -> nat -> bool := fun E x => match (E x) with | True => true end)
    (h_remove : forall S : Ensemble nat, (Included _ S U /\ cardinal _ S  (2 * n)) 
        -> exists T : Ensemble nat, 
            cardinal _ T n /\ Included _ T S /\ sum_n (fun i => if (hpres T i) then IZR (a i) else 0) (2 * n + 1) = sum_n (fun i => if (andb (hpres S i) (negb (hpres T i))) then IZR (a i) else 0) (2 * n + 1)
    )
    : forall i j : 'I_(2*n+1), a i = a j.
Proof. Admitted.
