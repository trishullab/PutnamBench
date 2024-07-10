Require Import Nat. From mathcomp Require Import bigop div fintype eqtype seq ssrbool ssrnat.
Variables (I : finType) (P : pred I).
Definition putnam_2021_a5_solution (n: nat) := ~ (n %| 42 \/ n %| 46). 
Theorem putnam_2021_a5
    (A : pred 'I_2021 := fun n => let m := nat_of_ord n in ((1 <= m <= 2021) && (gcd  m 2021 == 1)))
    (B : nat -> nat := fun j => \sum_(n | A n) (nat_of_ord n)^j)
    : forall (j: nat), B j mod 2021 = 0 <-> putnam_2021_a5_solution j. 
Proof. Admitted. 
