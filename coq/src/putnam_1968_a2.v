Require Import ZArith Reals QArith Qabs.
Theorem putnam_1968_a2
    (a b c d e f : Z)
    (eps : R)
    (hne : Z.mul a d <> Z.mul b c)
    (heps : Rgt eps 0)
    : exists r s : Q, 0 < Qabs (r * inject_Z a + s * inject_Z b - inject_Z e) /\ Rlt (Q2R (Qabs (r * inject_Z a + s * inject_Z b - inject_Z e))) eps /\ 0 < Qabs (r * inject_Z c + s * inject_Z d - inject_Z f) /\ Rlt (Q2R (Qabs (r * inject_Z c + s * inject_Z d - inject_Z f))) eps.
Proof. Admitted.
