Require Import Reals Nat Znumtheory QArith Coquelicot.Coquelicot. From mathcomp Require Import div.
Theorem putnam_1980_b6
    (A := fix f (n i: nat) :=
        match (n,i) with
        | (O,i') => 1/INR i'
        | (S n', i') => (INR n' + 1)/(INR i') * sum_n (fun x => f n' (Nat.add n' x)) (Nat.sub i' n')
    end)
    : forall (n p: nat), and (gt p n) (gt n 1) /\ prime (Z.of_nat p) -> exists (a b: nat), A n p = INR a/INR b /\ p %| b/(gcd a b) = false.
Proof. Admitted.
