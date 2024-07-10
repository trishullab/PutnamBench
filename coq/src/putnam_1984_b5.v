Require Import Nat Reals Coquelicot.Coquelicot.
Definition putnam_1984_b5_solution (coeff1 coeff2 : nat -> R) (n1 n2: nat) (a: Z) := a = 2%Z /\ (coeff1 = fun x => match x with | O => 0 | S O => -1 / 2 | S (S O) => 1 / 2 | _ => 0 end) /\ (coeff2 = fun x => match x with | O => 0 | S O => INR x | _ => 0 end) /\ n1 = 2%nat /\ n2 = 1%nat.
Theorem putnam_1984_b5
    (f : positive -> nat := fix f (n : positive) : nat :=
        match n with
        | xH => 1%nat
        | xO n' => f n'
        | xI n' => add 1 (f n')
    end)
    (g : nat -> R := fun m => sum_n (fun k => (-1) ^ (f (Pos.of_nat k)) * INR k ^ m) (2 ^ m - 1))
    (p: (nat -> R) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => coeff i * x ^ i) (n + 1)))
    : forall (m : nat), exists (a : Z) (coeff1 coeff2 : nat -> R) (n1 n2: nat), g m = (-1) ^ m * Rpower (IZR a) ((p coeff1 n1) (INR m)) * INR (fact (Z.to_nat (floor ((p coeff2 n2) (INR m))))) <->
    putnam_1984_b5_solution coeff1 coeff2 n1 n2 a.
Proof. Admitted.
