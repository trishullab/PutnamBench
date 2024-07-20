Require Import Reals Coquelicot.Coquelicot.
Open Scope R.
Definition putnam_1987_b4_solution := (-1, PI).
Theorem putnam_1987_b4
    (A := fix a (i j: nat) : (R * R):=
        match (i, j) with
        | (O, O) => (0.8, 0.6)
        | (S i', S j') => 
            let xn := fst (a i' j') in 
            let yn := snd (a i' j') in 
            (xn * cos yn - yn * sin yn,xn * sin yn + yn * cos yn)
        | (_, _) => (0, 0)
    end)
    : Lim_seq (fun n => fst (A n 0%nat)) = fst putnam_1987_b4_solution /\
    Lim_seq (fun n => snd (A 0%nat n)) = snd putnam_1987_b4_solution.
Proof. Admitted.
