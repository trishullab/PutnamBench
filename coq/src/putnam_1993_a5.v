Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1993_a5 
    (f : R -> R := fun x => (pow x 2 - x) / (pow x 3 - 3 * x + 1))
    : exists p q : Z,
    RInt (fun x => pow (f x) 2)  (-100) (-10) +
    RInt (fun x => pow (f x) 2) (1/101) (1/11) +
    RInt (fun x => pow (f x) 2) (101/100) (11/10) =
    IZR p /IZR q.
Proof. Admitted.
