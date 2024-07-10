Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a4_solution (coeff1 coeff2 : nat -> Z) (n1 n2: nat) := (coeff1 = fun x => match x with | S O => Z.of_nat 1 | _ => Z.of_nat 0 end) /\ (coeff2 = fun x => match x with | O => Z.of_nat 1 | S O => (floor (-1)) | _ => Z.of_nat 0 end) /\ n1 = 1%nat /\ n2 = 1%nat.
Theorem putnam_1977_a4
    (p: (nat -> Z) -> nat -> (R -> R) := fun coeff n => (fun x => sum_n (fun i => IZR (coeff i) * x ^ i) (n + 1)))
    : forall (coeff1 coeff2: nat -> Z) (n1 n2: nat), 
    (IZR (coeff1 n1) <> 0 /\ IZR (coeff2 n2) <> 0) -> forall (x: R), 0 < x < 1 -> (p coeff1 n1) x / (p coeff2 n2) x = Series (fun n => x ^ (2 ^ n) / (1 - x ^ (2 ^ (n + 1)))) <->
    putnam_1977_a4_solution coeff1 coeff2 n1 n2.
Proof. Admitted.
