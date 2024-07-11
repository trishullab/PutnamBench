Require Import Nat Reals List Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1985_a5_solution (n: nat) := Nat.eq n 3 \/ Nat.eq n 4 \/ Nat.eq n 7 \/ Nat.eq n 8.
Theorem putnam_1985_a5
    (F : nat -> R -> R := fun n x => let f (i: nat):= cos (INR i * x) in 
        let coeffs := map f (seq 1 n) in
        fold_right Rmult 1 coeffs)
    : forall (n: nat), and (le 1 n) (le n 10) ->
    RInt (F n) 0 2*PI <> 0 <-> putnam_1985_a5_solution n.
Proof. Admitted.
End putnam_1985_a5.