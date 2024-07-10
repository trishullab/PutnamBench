Require Import Reals Coquelicot.Coquelicot.
Theorem putnam_1965_a6
    (u v m : R)
    (pinter : (R * R) -> Prop := (fun p : R * R => u * (fst p) + v * (snd p) = 1 /\ (Rpower (fst p) m) + (Rpower (snd p) m) = 1))
    (hm : m > 1)
    (huv : u >= 0 /\ v >= 0)
    : ((exists! p : R * R, pinter p) /\ (exists p : R * R, fst p >= 0 /\ snd p >= 0 /\ pinter p)) <-> (exists n : R, (Rpower u n) + (Rpower v n) = 1 /\ powerRZ m (-1) + powerRZ n (-1) = 1).
Proof. Admitted.
