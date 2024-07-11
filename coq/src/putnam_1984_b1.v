Require Import Factorial ZArith Reals Coquelicot.Coquelicot.
Open Scope Z.
Definition putnam_1984_b1_solution (coeff1 coeff2 : nat -> Z) (n1 n2 : Z) := (coeff1 = fun x => match x with | O => 3 | S O => 1 | _ => 0 end) /\ (coeff2 = fun x => match x with | O => -2 | S O => -1 | _ => 0 end) /\ n1 = 1 /\ n2 = 1.
Theorem putnam_1984_b1
    (f : nat -> Z := fun n => (floor (sum_n (fun i => INR (fact (i + 1))) n)))
    (p: (nat -> Z) -> Z -> (nat -> Z) := fun coeff n => (fun x => (floor (sum_n (fun i => IZR ((coeff i) * (Z.of_nat (x ^ i)))) (Z.to_nat n + 1)))))
    : exists (coeff1 coeff2 : nat -> Z) (n1 n2 : Z), 
    let fix F (n: nat) :=
        match n with
        | O => f 0%nat
        | S O => f 1%nat
        | S ((S n'') as n') => (p coeff1 n1) n' * F n' + (p coeff2 n2) n'' * F n''
    end in
    f = F -> putnam_1984_b1_solution coeff1 coeff2 n1 n2.
Proof. Admitted.
