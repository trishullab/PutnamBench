Require Import Reals Coquelicot.Coquelicot.
Open Scope nat_scope.
(* Uses division by 0 in the first term of the series. *)
Definition putnam_1984_a2_solution := 2%R.
Theorem putnam_1984_a2
    (f : nat -> R := fun n => Rdiv (pow 6 n) ((pow 3 (n+1) - pow 2 (n+1)) * (pow 3 n - pow 2 n)))
    : Series f = putnam_1984_a2_solution.
Proof. Admitted.
