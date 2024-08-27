Require Import Reals List Coquelicot.Coquelicot.
Open Scope R.
Theorem putnam_1979_b6
    (n: nat) 
    (l: list C)
    (hl : length l = n)
    (sum1 := fold_left (fun acc x => Cplus acc (Cmult x x)) l 0)
    (sum2 := fold_left (fun acc x => Re x) l 0)
    : sqrt (Re sum1) <= sum2.
Proof. Admitted.


From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals complex.

About Rcomplex.