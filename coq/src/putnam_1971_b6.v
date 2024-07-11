Require Import ZArith Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1971_b6
    (delta : Z -> Z)
    (hdeltagt : forall n : Z, Z.gt n 0 -> forall t : Z, (Z.divide t n /\ Z.odd t = true) -> Z.ge (delta n) t)
    (hdeltamax : forall n : Z, Z.gt n 0 -> exists t : Z, Z.divide t n /\ Z.odd t = true /\ delta n = t)
    : forall x : Z, Z.gt x 0 -> sum_n_m (fun n => (IZR (delta (Z.of_nat n))) / (INR n) - 2 * (IZR x) / (IZR 3)) 1 (Z.to_nat x) < 1.
Proof. Admitted.
