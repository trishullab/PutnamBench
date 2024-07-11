Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import div.
Definition putnam_1981_a1_solution := 1 / 8.
Theorem putnam_1981_a1
    (prod_n : (nat -> nat) -> nat -> nat := fix prod_n (m: nat -> nat) (n : nat) :=
        match n with
        | O => m 0%nat
        | S n' => mul (m n') (prod_n m n')
    end)
    (P : nat -> nat -> Prop := fun n k => 5 ^ k %| prod_n (fun m => Nat.pow m m) (S n) = true)
    (f : nat -> nat)
    (hf : forall (n: nat), gt n 1 -> P n (f n) /\ forall (k: nat), P n k -> le k (f n))
    : Lim_seq (fun n => INR (f n) / INR n ^ 2) = putnam_1981_a1_solution.
Proof. Admitted.
