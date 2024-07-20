Require Import Nat ZArith Znumtheory. From mathcomp Require Import div.
Open Scope nat_scope.
Theorem putnam_1981_b3
    : ~ exists (N: nat),
    forall (n: nat), 
    (forall (p: nat), prime (Z.of_nat p) /\ p %| pow n 2 + 3 = true -> exists (m: nat), p %| pow m 2 + 3 = true /\ pow m 2 < n) ->
    n < N.
Proof. Admitted.
