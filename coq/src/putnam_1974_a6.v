Require Import Factorial Reals Coquelicot.Coquelicot. 
Definition putnam_1974_a6_solution (n N : nat) := (fact N mod n = 0%nat /\ forall (N': nat), fact N' mod n = 0%nat -> ge N' N, 25%nat).
Theorem putnam_1974_a6
    (f : nat -> nat)
    (cond : nat -> (nat -> Z) -> Prop := fun n coeff => coeff n = Z.of_nat 1 /\ let p : nat -> R := fun x => sum_n (fun i => IZR (coeff i) * INR x ^ i) (n + 1) in (forall (m: Z), Z.to_nat (floor (p (Z.to_nat m))) mod n = 0%nat))
    (hf : forall (n: nat), exists (coeff: nat -> Z), cond (f n) coeff)
    (hflb : forall (n: nat) (coeff: nat -> Z), cond n coeff -> ge n (f n))
    : forall (n: nat), exists N, f n = N /\ fst (putnam_1974_a6_solution n N) /\ f 1000000%nat = snd (putnam_1974_a6_solution n N).
Proof. Admitted.
