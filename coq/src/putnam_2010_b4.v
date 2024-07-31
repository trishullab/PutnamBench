Require Import Reals Coquelicot.Coquelicot.
Definition P : (nat -> R) -> nat -> R -> R := fun c n x => sum_n (fun i => c i * x ^ i) n.
Definition putnam_2010_b4_solution (c1 c2: nat -> R) (n m: nat) := exists (a b c d: R), b * c - a * d = 1 /\ P c1 n = (fun x => a * x + b) /\ P c2 m = (fun x => c * x + d).
Theorem putnam_2010_b4
    (c1 c2: nat -> R)
    (n m: nat)
    : (forall (x: R), (P c1 n x) * (P c2 m (x + 1)) - (P c1 n (x + 1)) * (P c2 m x) = 1) <-> putnam_2010_b4_solution c1 c2 n m.
Proof. Admitted.
