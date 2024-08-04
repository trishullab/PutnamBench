Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1995_a2_solution : R -> R -> Prop := fun (a b: R) => a = b.
Theorem putnam_1995_a2
    : forall (a b: R), a > 0 /\ b > 0 -> ((exists limit : R, filterlim (fun n : R => RInt (fun x => sqrt (sqrt (x + a) - sqrt x) - sqrt (sqrt x - (x - b))) b n) (Rbar_locally p_infty) (locally limit)) <-> putnam_1995_a2_solution a b).
Proof. Admitted.
