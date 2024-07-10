Require Import Nat ZArith Znumtheory. 
Open Scope nat_scope. 
Definition putnam_1976_a3_solution (p q n m: nat) := p = 2 /\ q = 3 /\ n = 3 /\ m = 2.
Theorem putnam_1976_a3
    (eq : nat -> nat -> nat -> nat -> Prop := fun p q n m => p^n = q^m + 1 \/ p^n = q^m -1)
    : forall (p q n m: nat), 
    (prime (Z.of_nat p) /\ prime (Z.of_nat q) /\ n >= 2 /\ m >= 2 /\ eq p q n m)
    <-> putnam_1976_a3_solution p q n m.
Proof. Admitted.
