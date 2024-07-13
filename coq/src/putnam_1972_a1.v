Require Import Reals Binomial.
Theorem putnam_1972_a1
    (n : nat)
    (hn : n > 0)
    (fourAP : R -> R -> R -> R -> Prop := fun n1 n2 n3 n4 : R => (n4-n3 = n3-n2 /\ n3-n2 = n2-n1)%R)
    : (~exists r : nat, r > 0 /\ r + 3 <= n /\ fourAP (C n r) (C n (r+1)) (C n (r+2)) (C n (r+3))).
Proof. Admitted.