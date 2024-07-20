Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1991_a3_solution (coeff: nat -> R) (n: nat) : Prop := exists (A r1 r2: R), coeff = (fun x => match x with | O => A * r1 * r2 | S O => -A * (r1 + r2) | S (S O) => A | _ => 0 end) /\ n = 2%nat.
Theorem putnam_1991_a3
    (p: (nat -> R) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1)))
    : forall (coeff: nat -> R) (n: nat), ge n 2 ->
    (exists (r: nat -> R), 
    (forall (i j: nat), lt i j -> r i < r j) /\
    forall (i: nat), lt i n -> p coeff n (r i) = 0 /\ lt i (n - 1) -> (Derive (p coeff n)) ((r i + r (S i)) / 2) = 0) <->
    putnam_1991_a3_solution coeff n.
Proof. Admitted.
