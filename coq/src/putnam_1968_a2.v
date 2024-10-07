Require Import ZArith Reals QArith Qabs.

Local Coercion inject_Z : Z >-> Q.
Local Coercion Q2R : Q >-> R.

Theorem putnam_1968_a2
    (a b c d e f : Z)
    (eps : R)
    (hne : Z.mul a d <> Z.mul b c)
    (heps : Rgt eps 0)
    : exists r s : Q, 0 < Qabs (r * a + s * b - e) /\ Rlt (Qabs (r * a + s * b - e)) eps /\ 0 < Qabs (r * c + s * d - f) /\ Rlt (Qabs (r * c + s * d - f)) eps.
Proof. Admitted.
