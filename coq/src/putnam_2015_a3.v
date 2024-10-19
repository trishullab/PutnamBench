Require Import Reals ROrderedType Coquelicot.Coquelicot. 
Open Scope C.

(* Note: While this formalization is quite unwieldy, to my knowledge there is no definition of complex log in real-closed.complex.v *)
Definition putnam_2015_a3_solution : C := RtoC 13725.
Theorem putnam_2015_a3
    (Carg : C -> R := fun z => if Reqb (Im z) 0 then (if Rlt_dec (Re z) 0 then PI else R0) else atan ((Im z)/(Re z)))
    (Clog : nat -> C -> C := fun n z => (Re (ln (Cmod z) / ln (INR n)), Carg z))
    (HCprod2_aux := fix Cprod2_aux (f : nat -> nat -> C) (n m : nat) {struct m} : C :=
        match m with
        | O => f n O
        | S m' => Cmult (f n m') (Cprod2_aux f n m')
    end)
    (HCprod2 := fix Cprod2 (f : nat -> nat -> C) (n m : nat) {struct n}: C :=
        match n with
        | O => 1%R
        | S n' => Cmult (HCprod2_aux f n m) (Cprod2 f n' m)
    end)
    (f : nat -> nat -> C := fun a b => Clog 2%nat (Re (1 + cos (2*PI*INR(a+1)*INR(b+1)/2015)), sin (2*PI*INR(a+1)*INR(b+1)/2015)))
    : HCprod2 f 2015%nat 2015%nat = putnam_2015_a3_solution.
Proof. Admitted. 