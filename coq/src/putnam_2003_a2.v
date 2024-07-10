Require Import List Reals Coquelicot.Coquelicot.
Theorem putnam_2003_a2
    (Suml := fix suml (l1 l2 : list R) : list R :=
        match l1, l2 with
        | nil, _ => nil
        | _, nil => nil
        | h1 :: t1, h2 :: t2 => (h1 + h2) :: suml t1 t2
    end)
    : forall (n: nat) (a b: list R), length a = n /\ length b = n ->
    (fold_left Rmult a 1) ^ (1 / n) + (fold_left Rmult b 1) ^ (1 / n) <=
    (fold_left Rmult (Suml a b) 1) ^ (1 / n).
Proof. Admitted.
