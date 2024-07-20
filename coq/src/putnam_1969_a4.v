Section putnam_1969_a4.
Require Import Reals. From Coquelicot Require Import Hierarchy RInt.
Open Scope R.
Theorem putnam_1969_a4
    : filterlim (fun n : nat => sum_n_m (fun i => (-1)^(i+1)*(Rpower (INR i) (-(INR i)))) 1 n) eventually (locally (RInt (fun x => (Rpower x x)) 0 1)).
Proof. Admitted.
End putnam_1969_a4.
