Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2016_a6_solution := 5 / 6.
Theorem putnam_2016_a6
    (C : R)
    (max : (R -> R) -> R)
    (hmax : forall (P : R -> R) (coeff: nat -> R) (n: nat), 
        (coeff n <> 0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1))) -> 
        exists (x: R), 0 <= x <= 1 /\ Rabs (P x) = max P)
    (hmaxub : forall (P : R -> R) (coeff: nat -> R) (n: nat), 
        (coeff n <> 0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1))) -> 
        forall (x: R), 0 <= x <= 1 /\ Rabs (P x) <= max P)
    (p : R -> Prop := 
        fun c => 
        forall (P : R -> R) (coeff: nat -> R),
        (coeff 3%nat <> R0 /\ P = (fun x => sum_n (fun i => coeff i * x ^ i) 4)) -> 
        (exists (x: R), 0 <= x <= 1 /\ P x = 0) -> RInt P 0 1 <= c * max P)
    (hpC : p C)
    (hClb : forall c : R, p c -> C <= c)
    : (C = putnam_2016_a6_solution).
Proof. Admitted.
