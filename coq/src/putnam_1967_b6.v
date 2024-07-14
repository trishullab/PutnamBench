Require Import Reals. From Coquelicot Require Import Hierarchy Derive.
Theorem putnam_1967_b6
    (f : R -> R -> R)
    (fdiff : forall x0 y0 : R, ex_derive (fun x : R => f x y0) x0 /\ ex_derive (fun y : R => f x0 y) y0)
    (fbound : forall x y : R, x^2 + y^2 <= 1 -> Rabs (f x y) <= 1)
    : (exists x0 y0 : R, x0^2 + y0^2 < 1 /\ (Derive (fun x : R => f x y0) x0)^2 + (Derive (fun y : R => f x0 y) y0)^2 <= 16).
Proof. Admitted.