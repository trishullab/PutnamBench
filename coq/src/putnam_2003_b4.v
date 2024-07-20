Require Import Reals ZArith Coquelicot.Coquelicot.
Theorem putnam_2003_b4
    (a b c d e: Z)
    (ha : ~ Z.eq a 0)
    : let a := IZR a in 
    let b := IZR b in 
    let c := IZR c in 
    let d := IZR d in 
    let e := IZR e in 
    exists (r1 r2 r3 r4: R), forall (z: R), 
    a * z ^ 4 + b * z ^ 3 + c * z ^ 2 + d * z + e = a * (z - r1) * (z - r2) * (z - r3) * (z - r4) ->
    (exists (p q: Z), r1 + r2 = IZR p / IZR q) /\ r1 + r2 <> r3 + r4 -> exists (p q: Z), r1 * r2 = IZR p / IZR q.
Proof. Admitted.
