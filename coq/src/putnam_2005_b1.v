Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2005_b1_solution (c: nat -> nat -> R) (n m: nat) := n = 2%nat /\ m = 2%nat /\ c = fun x y => match x, y with | 0, 1 => -1 | 0, 2 => 1 | 1, 0 => 2 | 1, 1 => -4 | 2, 0 => 4 | _, _ => 0 end.
Theorem putnam_2005_b1
    (c: nat -> nat -> R)
    (n m: nat)
    (p : R -> R -> R := fun x y => sum_n (fun i => (sum_n (fun j => c i j * x ^ i * y ^ j) m)) (n + 1))
    : forall (a: R), p (IZR (floor a)) (IZR (floor (2 * a))) = 0 <-> putnam_2005_b1_solution c n m.
Proof. Admitted.
