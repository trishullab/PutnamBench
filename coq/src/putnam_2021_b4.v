Require Import PeanoNat. From mathcomp Require Import bigop fintype ssrnat. 
Theorem putnam_2021_b4
    (F := fix f (n: nat) : nat :=
        match n with
        | O => O
        | S O => 1
        | S ((S n'') as n') => f n' + f n''
    end)
    : forall (m: nat), m > 2 = true -> 
    exists (p: nat), (\prod_(k < (F m)) k^k) mod (F m) = F p.
Proof. Admitted. 
