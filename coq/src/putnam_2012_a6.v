Require Import Reals. From Coquelicot Require Import Coquelicot Continuity RInt.
Open Scope R_scope.
Definition putnam_2012_a6_solution := True.
Theorem putnam_2012_a6
    (f : (R*R) -> R)
    (v : R*R)
    (hf : continuous f v -> forall (a b c d : R), a > b /\ c > d /\ (a - b) * (c - d) = 1 ->
    RInt (fun y => RInt (fun x => f (x, y)) a b) c d = 0)
    : (f = fun _ => 0) <-> putnam_2012_a6_solution.
Proof. Admitted.
