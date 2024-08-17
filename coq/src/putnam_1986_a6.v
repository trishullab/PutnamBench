Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_1986_a6_solution (b: nat -> nat) (n: nat) := 
    let fix prod_n (b : nat -> nat) (n : nat) : nat :=
        match n with
        | O => 1%nat
        | S n' => Nat.mul (b n') (prod_n b n')
    end in
    INR (prod_n b n) / INR (fact n).
Theorem putnam_1986_a6
    (n : nat)
    (npos : gt n 0)
    (a : nat -> R) 
    (b : nat -> nat)
    (bpos : forall i : nat, lt i n -> gt (b i) 0)
    (binj : forall i j : nat, lt i n /\ lt j n -> (b i = b j -> i = j))
    (f : R -> R)
    (fpoly : exists c : nat -> R, exists deg : nat, f = fun x => sum_n (fun n => c n * x ^ n) deg)
    (hf : forall x : R, (1 - x) ^ n * f x = 1 + sum_n (fun i => (a i) * x ^ (b i)) (n - 1))
    : f 1 = putnam_1986_a6_solution b n.
Proof. Admitted.
