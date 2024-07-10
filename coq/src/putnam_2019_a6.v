Require Import Reals Coquelicot.Coquelicot.
Definition putnam_2019_a6_solution := 1.
Theorem putnam_2019_a6 
    (g : R -> R)
    (contg : forall (x: R), 0 <= x <= 1 -> continuity_pt g x)
    (diff2g : forall (x: R), 0 < x < 1 -> ex_derive_n g 2 x)
    (r : R)
    (posr : r > 1)
    (p : filterlim (fun x => (g x / Rpower x r)) (at_right 0) (locally 0))
    : 
    (filterlim (Derive g) (at_right 0) (locally 0)) \/
    ~ exists (c: R), is_LimSup_seq (fun x => if Rlt_dec (INR x) 0 then 0 else Rpower (INR x) r * Rabs (Derive_n g 2 (INR x))) c.
Proof. Admitted.
