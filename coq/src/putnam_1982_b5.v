Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1982_b5
    (F := fix f (n: nat) (x: R) :=
        match n with 
        | O => exp 1
        | S n' => ln x / ln (f n' x)
    end)
    : forall (x: R), x > Rpower (exp 1) (exp 1) -> 
    ex_lim_seq (fun n => F n x) /\ 
    let g (x: R) := Lim_seq (fun n => F n x) in
    continuity_pt g x.
Proof. Admitted.
