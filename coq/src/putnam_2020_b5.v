From mathcomp Require Import fintype seq ssrbool. Require Import Reals Coquelicot.Complex.
Open Scope C.
Theorem putnam_2020_b5
    (z: 'I_4 -> C)
    (i0 n: 'I_4)
    : (Cmod (z n) < 1)%R /\
    z n <> RtoC 1 ->
    RtoC 3 - z (nth i0 (enum 'I_4) 0) - z (nth i0 (enum 'I_4) 1) -
    z (nth i0 (enum 'I_4) 2) - z (nth i0 (enum 'I_4) 3) +
    z (nth i0 (enum 'I_4) 0) * z (nth i0 (enum 'I_4) 1) *
    z (nth i0 (enum 'I_4) 2) * z (nth i0 (enum 'I_4) 3) <> RtoC 0.
Proof. Admitted.
