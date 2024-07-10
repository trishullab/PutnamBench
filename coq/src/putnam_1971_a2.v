Require Import Reals Ensembles Finite_sets Coquelicot.Coquelicot. From mathcomp Require Import fintype ssralg ssrnat ssrnum poly.
Definition putnam_1971_a2_solution : Ensemble (R -> R) := fun f : R -> R => forall x : R, f x = x.
Theorem putnam_1971_a2
    (is_poly : (R -> R) -> Prop := fun f => exists (k : nat) (coeff : nat -> R), forall x : R, sum_n (fun i => (coeff i) * (x^i)) k = f x) 
    : forall P : R -> R, (is_poly P /\ (P (INR 0) = (INR 0) /\ (forall x : R, P (Rpower x 2 + (INR 1)) = Rpower (P x) 2 + (INR 1))) <-> (exists f : R -> R, In _ putnam_1971_a2_solution f /\ (forall x : R, P x = f x))).
Proof. Admitted.
