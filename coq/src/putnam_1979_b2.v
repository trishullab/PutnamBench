Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1979_b2_solution (a b: R):= (Rpower b (b/(b-a))) / ((exp 1) * Rpower a (a/(b-a))).
Theorem putnam_1979_b2
    (a b: R)
    (hab : 0 < a < b)
    : Lim_seq (fun lam => Rpower (RInt (fun x => Rpower (b*x + a*(1-x)) (INR lam)) 0 1) 1/INR lam) 
    = putnam_1979_b2_solution a b.
Proof. Admitted.
