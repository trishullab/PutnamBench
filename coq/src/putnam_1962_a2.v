Require Import Reals Coquelicot.Coquelicot Ensembles.
Definition putnam_1962_a2_solution : Ensemble (R -> R) := (fun f : R -> R => exists a c : R, a > 0 /\ f = (fun x : R => a / (1 - c * x) ^ 2)).
Theorem putnam_1962_a2
    (hf : R -> (R -> R) -> Prop := (fun (e : R) (f : R -> R) => forall x : R, (0 < x /\ x < e) -> (RInt f 0 x) / x = sqrt (f 0 * f x)))
    (hfinf : (R -> R) -> Prop := (fun f : R -> R => forall x : R, x > 0 -> (RInt f 0 x) / x = sqrt (f 0 * f x)))
    : (forall f : R -> R, (hfinf f -> (exists g : R -> R, putnam_1962_a2_solution g /\ (forall x : R, x >= 0 -> g x = f x))) /\
    (forall e : R, (e > 0 /\ hf e f) -> (exists g : R -> R, putnam_1962_a2_solution g /\ (forall x : R, (0 <= x /\ x < e) -> g x = f x)))) /\
    (forall f : R -> R, putnam_1962_a2_solution f -> hfinf f \/ (exists e : R, e > 0 /\ hf e f)).
Proof. Admitted.
