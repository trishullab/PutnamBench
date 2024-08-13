Require Import Factorial ZArith.
Open Scope Z.
Fixpoint nat_sum (a : nat -> nat) (k : nat) : nat := 
    match k with
    | O => a O
    | S k' => a k + nat_sum a k'
    end.
Fixpoint Z_sum (a : nat -> Z) (k : nat) : Z := 
    match k with
    | O => a O
    | S k' => a k + Z_sum a k'
    end.
Definition putnam_1984_b1_solution : (nat -> Z) * (nat -> Z) := (fun x => match x with | O => 3 | S O => 1 | _ => 0 end, fun x => match x with | O => -2 | S O => -1 | _ => 0 end).
Theorem putnam_1984_b1
    (f : nat -> Z)
    (poly : nat -> (nat -> Z) -> nat -> Z := fun k p n => Z_sum (fun i => (p i) * (Z.of_nat (n ^ i))) k)
    (deg : (nat -> Z) -> nat)
    (finpoly : (nat -> Z) -> Prop := fun p => (exists k : nat, p k <> 0) /\ (exists m : nat, forall n : nat, gt n m -> p n = 0))
    (hdeg : forall p : nat -> Z, finpoly p -> (p (deg p) <> 0 /\ forall n : nat, gt n (deg p) -> p n = 0))
    (hf : forall n : nat, gt n 0 -> f n = (Z_sum (fun i => Z.of_nat (fact i)) n) - Z.of_nat (fact 0))
    : finpoly (fst putnam_1984_b1_solution) /\ finpoly (snd putnam_1984_b1_solution) /\ 
    forall n : nat, ge n 1 -> f (Nat.add n 2) = poly (deg (fst putnam_1984_b1_solution)) (fst putnam_1984_b1_solution) n * f (Nat.add n 1) + poly (deg (snd putnam_1984_b1_solution)) (snd putnam_1984_b1_solution) n * f n.
Proof. Admitted.
