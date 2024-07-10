Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_1978_a6
    (n : nat)
    (npos : gt n 0)
    (A : list (nat * nat))
    (hA : length A = n)
    (subA : list (nat * nat))
    (hsubA : forall (P1 P2: (nat * nat)), let '(Ax, Ay) := P1 in let (Bx, By) := P2 in (In (Ax, Ay) subA /\ In (Bx, By) subA) <-> (In (Ax, Ay) A /\ In (Bx, By) A /\ (sqrt (INR ((Ax  - Bx) ^ 2 + (Ay - By) ^ 2)) < 1)))
    : INR (length subA) < 2 * INR n ^ (3 / 2).
Proof. Admitted.
