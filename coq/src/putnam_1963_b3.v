Require Import Ensembles Reals Rtrigo_def Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1963_b3_solution : Ensemble (R -> R) := 
    Union (R -> R) (Union (R -> R) (fun f => exists A k : R, f = (fun x => A * sinh (k * x))) (fun f => exists A : R, f = (fun x => A * x))) (fun f => exists A k : R, f = fun x => (A * sin (k * x))).
Theorem putnam_1963_b3
    (f : R -> R)
    (fdiff : forall x, ex_derive f x /\ ex_derive (Derive f) x)
    : ((forall x y : R, (f x) ^ 2 - (f y) ^ 2 = f (x + y) * f (x - y)) <-> In (R -> R) putnam_1963_b3_solution f).
Proof. Admitted.