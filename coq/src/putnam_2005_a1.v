Require Import Nat List Coquelicot.Coquelicot.
Fixpoint nat_sum (a : nat -> nat) (k : nat) : nat := 
    match k with
    | O => a 0
    | S k' => a k + nat_sum a k'
    end.
Theorem putnam_2005_a1
    : forall n : nat, n > 0 -> exists k : nat, exists a : nat -> (nat * nat), n = nat_sum (fun i => 2^(fst (a i)) * 3^(snd(a i))) k /\ forall i j : nat, (i <= k /\ j <= k /\ i <> j) -> ~exists m : nat, (2^(fst (a i))*3^(snd (a i)) * m = 2^(fst (a j))*3^(snd (a j))).
Proof. Admitted.
