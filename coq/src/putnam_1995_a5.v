Require Import Nat Reals Coquelicot.Coquelicot. From mathcomp Require Import fintype.
Definition putnam_1995_a5_solution : Prop := True.
Theorem putnam_1995_a5
    (hdiffx := fun (n : nat) (x : nat -> (R -> R)) => forall (i : nat) (t : R), le i (Nat.sub n 1) -> ex_derive (x i) t)
    (ha := fun (n : nat) (a : nat -> nat -> R) => forall i j : nat, le i (Nat.sub n 1) /\ le j (Nat.sub n 1) -> a i j > 0)
    (hcomb := fun (n : nat) (x : nat -> (R -> R)) (a : nat -> nat -> R) => (forall t : R, forall i : nat, le i (Nat.sub n 1) -> Derive (x i) t = sum_n (fun j => a i j * ((x j) t)) (n - 1)))
    (hxlim := fun (n : nat) (x : nat -> (R -> R)) => (forall i : nat, le i (Nat.sub n 1) -> filterlim (x i) (Rbar_locally p_infty) (locally 0)))
    : putnam_1995_a5_solution <-> (forall (n : nat) (x : nat -> (R -> R)) (a : nat -> nat -> R), (gt n 0 /\ hdiffx n x /\ ha n a /\ hcomb n x a /\ hxlim n x) -> ~(forall b : nat -> R, (forall t : R, 0 = sum_n (fun i => (b i) * ((x i) t)) (n - 1)) -> (forall i : nat, le i (Nat.sub n 1) -> b i = 0))).
Proof. Admitted.
