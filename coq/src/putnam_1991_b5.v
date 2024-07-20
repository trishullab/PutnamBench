Require Import Reals Nat ZArith Znumtheory Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype seq ssrbool.
Open Scope R.
Definition putnam_1991_b5_solution (p: nat) : nat := p / 4 + 1.
Theorem putnam_1991_b5 
    (p: nat)
    (hp : odd p = true /\ prime (Z.of_nat p))
    (A: Ensemble Z := fun z => exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2))
    (B: Ensemble Z := fun z => exists (m: 'I_p), z = Z.of_nat (pow (nat_of_ord m) 2 + 1))
    (C : Ensemble Z := Intersection Z A B)
    : cardinal Z C (putnam_1991_b5_solution p).
Proof. Admitted.
