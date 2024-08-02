Require Import Nat ZArith Reals Coquelicot.Coquelicot.
Open Scope nat_scope.
Definition putnam_1998_a4_solution : nat -> Prop := (fun n : nat => exists k : nat, n = 6 * k + 1).
Theorem putnam_1998_a4
    (concatenate : nat -> nat -> nat := fun x y => Nat.pow 10 (Z.to_nat (floor (Rdiv (ln (INR y)) (ln 10))) + 1) * x + y)
    (a := fix A (n: nat) :=
        match n with
        | O => O
        | S O => 1
        | S ((S n'') as n') => if eqb n'' O then 10 else (concatenate (A n') (A n''))
    end)
    : forall (n: nat), n >= 1 -> ((a (n-1)) mod 11 = 0 <-> putnam_1998_a4_solution n).
Proof. Admitted.
