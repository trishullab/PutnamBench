Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1978_b5_solution := fun n => match n with | O => 1 | S (S O) => -4 | S (S (S (S O))) => 4 | _ => 0 end.
Theorem putnam_1978_b5
    (valid : (nat -> R) -> Prop := fun coeff => 
        let p := fun x => sum_n (fun i => coeff i * x ^ i) 5 in
        forall (x: R), -1 <= x <= 1 -> 0 <= p x <= 1
    )
    (maxcoeff : nat -> R)
    (hm : valid maxcoeff)
    (hubm : forall (coeff: nat -> R), valid coeff -> coeff 4%nat <= maxcoeff 4%nat)
    : maxcoeff = putnam_1978_b5_solution.
Proof. Admitted.
