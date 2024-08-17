Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_1984_b5_solution : Z * (nat -> R) * (nat -> nat) := (2%Z, fun x => INR x * (INR x - 1) / 2, fun x => x).
Theorem putnam_1984_b5
    (d : nat -> nat)
    (hd : forall n : nat, d n = if eq_nat_dec n 0 then O else if eq_nat_dec (n mod 2) 0 then d (div n 2) else S (d (div n 2)))
    (m : nat)
    (mpos : gt m 0)
    : let (af, g) := putnam_1984_b5_solution in let (a, f) := af in sum_n (fun k => (-1)^(d k) * INR (Nat.pow k m)) (2^m - 1) = (-1) ^ m * Rpower (IZR a) (f m) * INR (fact (g m)).
Proof. Admitted.
