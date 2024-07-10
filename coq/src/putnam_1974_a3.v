Require Import Nat ZArith Znumtheory. 
Definition putnam_1974_a3_solution := (fun x => x mod 8 = 1, fun x => x mod 8 = 5).
Theorem putnam_1974_a3
    (ha : nat -> Prop := fun p => exists (m n: Z), (Z.of_nat p) = m*m + 16*n*n)
    (hb : nat -> Prop := fun p => exists (m n: Z), (Z.of_nat p) = 4*m*m + 4*m*n + 5*n*n)
    : forall (p: nat), prime (Z.of_nat p) /\ odd p = true -> 
    ((ha p <-> fst (putnam_1974_a3_solution) (Z.of_nat p)) /\ 
    (hb p <-> snd (putnam_1974_a3_solution) (Z.of_nat p))).
Proof. Admitted.
