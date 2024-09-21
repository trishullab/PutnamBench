Require Import Nat Reals Coquelicot.Coquelicot.
Theorem putnam_1971_a4
    (epsilon : R)
    (hepsilon : 0 < epsilon < 1)
    (P : nat -> (R * R) -> R := fun n '(x, y) => (x + y)^n * (x^2 - (2 - epsilon)*x*y + y^2))
    : exists N : nat, forall n : nat, ge n N -> (exists (k : nat) (coeff : (nat * nat) -> R), 
        (forall i : nat * nat, coeff i >= 0) /\ (forall x : R * R, P n x = sum_n (fun i => sum_n (fun j => (coeff (i,j)) * (fst x)^i * (snd x)^j) k) k)).
Proof. Admitted.

(* Note: While I believe there is a mathcomp adjacent implementation for multinomials due to Strub, Hivert, and Thery, my understanding
         is there are two representations there, and that there may be further work to unify them before integration into mathcomp. *)
