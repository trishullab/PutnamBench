Require Import Reals Coquelicot.Derive Coquelicot.Hierarchy. From mathcomp Require Import div fintype seq ssrbool.
Definition putnam_2023_b4_solution := 29.
Theorem putnam_2023_b4 
    (n : nat)
    (i0 : 'I_n)
    (s : 'I_n -> R)
    (f : R -> R)
    (t0 := s (nth i0 (enum 'I_n) 0))
    (hs : forall i : 'I_n, s i < s (ordS i))
    (hf : forall t : R, 
        ((t >= t0 -> continuity_pt f t) /\ (t > t0 /\ ~ exists i, s i = t -> ex_derive_n f 2 t)) /\ 
        (f t0 = 0.5) /\
        (forall k: 'I_n, let tk := s k in filterlim (Derive_n f 1) (at_right tk) (locally 0)) /\
        (forall k: 'I_n, k <> nth i0 (enum 'I_n) (n-1) -> let tk := s k in tk < t < tk+1 -> (Derive_n f 2) = (fun _ => INR k+1)) /\ 
        (forall m: 'I_n, t > s (nth i0 (enum 'I_n) m) -> (Derive_n f 2) = (fun _ => INR m+1))
    )
    : forall (T: R), f(t0+T) = 2023 <-> T >= putnam_2023_b4_solution /\ f(t0 + putnam_2023_b4_solution) = 2023.
Proof. Admitted. 
