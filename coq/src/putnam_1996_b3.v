Require Import Reals Coquelicot.Hierarchy Nat.
Definition putnam_1996_b3_solution : nat -> R := (fun n => (2 * INR n ^ 3 + 3 * INR n ^ 2 - 11 * INR n + 18) / 6).
Theorem putnam_1996_b3
    (n : nat)
    (xset : (nat -> nat) -> Prop := (fun x : nat -> nat => forall y : nat, (le 1 y /\ le y n) -> exists! i, (le 0 i /\ le i (n - 1)) /\ x i = y))
    (xsum : (nat -> nat) -> R := (fun x : nat -> nat => sum_n (fun i : nat => INR (x i) * INR (x ((i + 1) mod n))) (n - 1)))
    (nge2 : ge n 2)
    : (exists x : nat -> nat, xset x /\ xsum x = putnam_1996_b3_solution n) /\ (forall x : nat -> nat, xset x -> xsum x <= putnam_1996_b3_solution n).
Proof. Admitted.
