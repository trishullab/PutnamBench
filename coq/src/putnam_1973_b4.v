Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1973_b4_solution : R -> R := fun x => x.
Theorem putnam_1973_b4
    (f : R -> R)
    (hprop : (R -> R) -> Prop := fun g => (forall x : R, ex_derive g x) /\ continuity (Derive_n g 1) /\ (forall x : R, 0 <= x <= 1 -> (0 < Derive_n g 1 x <= 1)) /\ g 0 = 0)
    (hf : hprop f)
    : (RInt f 0 1)^2 >= RInt (fun x => (f x)^3) 0 1 /\ (hprop putnam_1973_b4_solution /\ (RInt putnam_1973_b4_solution 0 1)^2 = RInt (fun x => (putnam_1973_b4_solution x)^3) 0 1).
Proof. Admitted.
