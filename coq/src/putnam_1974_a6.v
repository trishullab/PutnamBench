From mathcomp Require Import all_algebra all_ssreflect.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Definition putnam_1974_a6_solution : nat := 25%nat.
Theorem putnam_1974_a6
    (hdivnallx : {poly int} -> Prop := fun f => (f \is monic) /\ (forall x : int, ((10^6) %| f.[x])%Z))
    : (exists f : {poly int}, hdivnallx f /\ size f = putnam_1974_a6_solution.+1) /\
      (forall d : nat, lt d putnam_1974_a6_solution -> ~ (exists f : {poly int}, hdivnallx f /\ size f = d.+1)).
Proof. Admitted.
