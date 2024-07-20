Section putnam_1964_a4.
Require Import ZArith. From mathcomp.analysis Require Import trigo.
Open Scope Z.
(* changed type of u from (nat -> Z) to (Z -> Z) *)
Theorem putnam_1964_a4
    (u : Z -> Z)
    (boundedu : exists B T : Z, forall n : Z, Z.ge n 0 -> Z.le B (u n) /\ Z.le (u n) T)
    (hu : forall n : Z, Z.ge n 4 -> u n = (u (n - 1) + u (n - 2) + u (n - 3) * u (n - 4)) / (u (n - 1) * u (n - 2) + u (n - 3) + u (n - 4)) /\ u (n - 1) * u (n - 2) + u (n - 3) + u (n - 4) <> 0)
    : exists N c : Z, Z.gt c 0 /\ Z.ge N 0 /\ forall n : Z, Z.ge n N -> u (n + c) = u n.
Proof. Admitted.
End putnam_1964_a4.