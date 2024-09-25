Require Import Finite_sets Reals Coquelicot.Coquelicot.
Theorem putnam_1965_b3
    : cardinal (R * R * R) (fun abc : R * R * R => let '(a, b, c) := abc in (IZR (floor a) = a /\ IZR (floor b) = b /\ IZR (floor c) = c /\ a > 0 /\ a <= b /\ c > 0 /\ a ^ 2 + b ^ 2 = c ^ 2 /\ a * b / 2 = 2 * (a + b + c))) 3.
Proof. Admitted.