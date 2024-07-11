Require Import Nat Reals Arith Znumtheory Ensembles Finite_sets.
Open Scope nat_scope.
Theorem putnam_2015_a5
    (Nq : nat -> Ensemble nat := fun q : nat => (fun a : nat => and (Rle R0 (INR a)) (Rle (INR a) (Rdiv (INR q) (INR 4))) /\ gcd a q = 1))
    : forall (q: nat), 
    (odd q = true /\ exists (p k: nat), prime (Z.of_nat p) /\ (p mod 8 = 5 \/ p mod 8 = 7) /\ q = p^k)
    -> exists (Nq_size: nat),  cardinal nat (Nq q) Nq_size /\ odd Nq_size = true.
Proof. Admitted.
