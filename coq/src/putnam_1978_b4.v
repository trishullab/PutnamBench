Require Import Reals.
Open Scope R.
Theorem putnam_1978_b4 
    : forall (n: R), exists (a b c d: Z), IZR a > n /\ IZR b > n /\ IZR c > n /\ IZR d > n /\ IZR a * IZR a + IZR b * IZR b + IZR c * IZR c + IZR d * IZR d = IZR a * IZR b * IZR c + IZR a * IZR b * IZR d + IZR a * IZR c * IZR d + IZR b * IZR c * IZR d.
Proof. Admitted.
