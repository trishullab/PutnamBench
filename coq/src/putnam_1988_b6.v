Require Import Ensembles Finite_sets.
Theorem putnam_1988_b6
    (triangular : nat -> Prop := fun n => exists (m: nat), n = Nat.div (m * (m + 1)) 2)
    (E: Ensemble (nat*nat) := fun '(a, b) => exists (m: nat), triangular m <-> triangular (Nat.mul a m + b))
    : ~ exists (n: nat), cardinal (nat*nat) E n.
Proof. Admitted.
