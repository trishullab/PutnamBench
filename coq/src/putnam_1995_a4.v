Require Import Nat ZArith Coquelicot.Coquelicot.
Open Scope Z_scope.
Fixpoint Z_sum (a : nat -> Z) (k : nat) : Z := 
    match k with
    | O => a O
    | S k' => a k + Z_sum a k'
    end.
Theorem putnam_1995_a4
    (n : nat)
    (hn : gt n 0)
    (necklace : nat -> Z)
    (hnecklacesum : Z_sum necklace (n - 1) = (Z.of_nat n) - 1)
    : exists cut : nat, le cut (n-1) /\ (forall k : nat, le k (n-1) -> (Z_sum (fun i => necklace (Nat.modulo (cut + i) n)) k) <= Z.of_nat k).
Proof. Admitted.
