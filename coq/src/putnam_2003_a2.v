Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2003_a2
    (Suml := fix suml (l1 l2 : list R) : list R :=
        match l1, l2 with
        | nil, _ => nil
        | _, nil => nil
        | h1 :: t1, h2 :: t2 => (h1 + h2) :: suml t1 t2
    end)
    (n : nat)
    (a b : list R)
    (npos : ge n 1)
    (ablen : length a = n /\ length b = n)
    (abnneg : forall i : nat, lt i n -> nth i a 0 >= 0 /\ nth i b 0 >= 0)
    : (fold_left Rmult a 1) ^ (1 / n) + (fold_left Rmult b 1) ^ (1 / n) <=
    (fold_left Rmult (Suml a b) 1) ^ (1 / n).
Proof. Admitted.
