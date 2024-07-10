Require Import List QArith Znumtheory Reals.
Open Scope Q.
Theorem putnam_2009_b1
    (Factl := fix factl (l : list nat) : list nat :=
        match l with
        | nil => nil
        | h :: t => fact h :: t
    end)
    : forall (q: Q), q > 0 -> exists (n d: list nat), (forall x, (In x n \/ In x d)-> prime (Z.of_nat x)) /\ 
    inject_Z (Z.of_nat (fold_left Nat.mul (Factl n) 1%nat)) / inject_Z (Z.of_nat (fold_left Nat.mul (Factl d) 1%nat)) = q.
Proof. Admitted.
