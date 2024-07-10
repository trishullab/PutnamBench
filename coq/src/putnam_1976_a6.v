Require Import Reals Coquelicot.Derive.
Theorem putnam_1976_a6
    (f: R -> R) 
    (hf : R  -> Prop := fun x => -1 <= x <= 1 -> ex_derive_n f 2 x /\ (f 0)*(f 0) + ((Derive_n f 1) 0)*((Derive_n f 1) 0) = 4 )
    : exists (a: R), f a + ((Derive_n f 2) a) = 0.
Proof. Admitted.
