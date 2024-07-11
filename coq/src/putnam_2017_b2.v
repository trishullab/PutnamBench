Require Import Nat ZArith Coquelicot.Coquelicot.
Definition putnam_2017_b2_solution := 16.
Theorem putnam_2017_b2
    (mina : nat)
    (posMin : mina > 0)
    (A : nat -> nat -> nat := fun a k => Z.to_nat (floor (sum_n (fun i => Raxioms.INR (a + (i + 1))) k)))
    (p : nat -> nat -> Prop := fun N k => exists (a: nat), a > 0 /\ A a k = N) 
    (q : nat -> Prop := fun N => p N 2017 /\ forall (k: nat), k > 1 -> k <> 2017 -> ~ p N k)
    (hmina : q (A mina 2017)) 
    (hminalb : (forall (a: nat), a > 0 /\ q (A a 2017) -> mina <= a))
    : mina = putnam_2017_b2_solution.
Proof. Admitted.
