Require Import Nat Ensembles Finite_sets.
Definition putnam_1980_a2_solution (m n: nat) := (6*m*m + 3*m + 1) * (6*n*n + 3*n + 1).
Theorem putnam_1980_a2
    (gcd3 : nat -> nat -> nat -> nat := fun a b c => gcd (gcd a b) c)
    (f: Ensemble (nat*nat))
    : forall (m n: nat) (a b c d: nat), 
    (f (m, n) <-> gcd3 a b c = 3 ^ m * 7 ^ n \/ gcd3 a b d = 3 ^ m * 7 ^ n \/ gcd3 a c d = 3 ^ m * 7 ^ n \/ gcd3 b c d = 3 ^ m * 7 ^ n) -> cardinal (nat*nat) f (putnam_1980_a2_solution m n).
Proof. Admitted.
