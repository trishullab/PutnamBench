Require Import Finite_sets Reals Factorial. From mathcomp Require Import fintype seq ssrbool. From Coquelicot Require Import Hierarchy Series.
Theorem putnam_1967_a2
    (T : nat -> nat)
    (hT0 : (T 0 = 1)%nat)
    (hTn : forall n : nat, (n >= 1)%nat -> exists i0 : 'I_n, cardinal ('I_n -> 'I_n -> nat) (fun A : 'I_n -> 'I_n -> nat => (forall i j : 'I_n, A i j = A j i) /\ (forall j : 'I_n, sum_n (fun i => INR (A (nth i0 (enum 'I_n) i) j)) (n - 1) = 1)) (T n))
    : ((forall n : nat, (n >= 1 -> T (n + 1) = T n + n * T (n - 1))%nat) /\ (forall x : R, Series (fun n => INR (T n) * x ^ n / INR (fact n)) = exp (x + x ^ 2 / 2))).
Proof. Admitted.