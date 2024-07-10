Require Import Reals Factorial Coquelicot.Coquelicot.
Definition putnam_1986_a6_solution (m: nat -> R) (n: nat) := 
    let fix prod_n (m: nat -> R) (n : nat) : R :=
        match n with
        | O => m 0%nat
        | S n' => m n' * prod_n m n'
    end in
    prod_n m n / INR (fact n).
Theorem putnam_1986_a6
    (n: nat)
    (a m: nat -> R) 
    (ham : forall i j: nat, Nat.lt i j -> 0 < m i < m j)
    (p : R -> R := fun x => sum_n (fun n => a n * Rpower x (m n)) n)
    : exists (q: R -> R), forall (x: R), 
    p x = (1 - x) ^ n * (q x) ->
    q 1 = putnam_1986_a6_solution m n.
Proof. Admitted.
