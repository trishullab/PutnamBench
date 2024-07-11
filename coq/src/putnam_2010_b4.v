Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2010_b4_solution (c1 c2: nat -> R) (n m: nat) := exists (a b c d: R), b * c - a  * d = 1 /\ n = 1%nat /\ m = 1%nat /\ c1 = (fun x => match x with | O => b | S O => a | _ => 0 end) /\ c2 = (fun x => match x with | O => d | S O => c | _ => 0 end).
Theorem putnam_2010_b4
    (P : (nat -> R) -> nat -> R -> R := fun c n x => sum_n (fun i => c i * x ^ i) (n + 1))
    (c1 c2: nat -> R)
    (n m: nat)
    : forall (x: R), (P c1 n x) * (P c2 m (x + 1)) - (P c1 n (x + 1)) * (P c2 m x) = 1 <-> putnam_2010_b4_solution c1 c2 n m.
Proof. Admitted.
