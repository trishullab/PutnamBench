Require Import Reals Coquelicot.Coquelicot.
Definition putnam_1977_a1_solution := 1.
Theorem putnam_1977_a1
    (y : R -> R := fun x => 2 * x ^ 4 + 7 * x ^ 3 + 3 * x - 5)
    (collinear : ((R * R) * (R * R) * (R * R) * (R * R)) -> Prop := fun ABCD =>
        let '((Ax, Ay), (Bx, By), (Cx, Cy), (Dx, Dy)) := ABCD in
        exists (m b : R),
        m * Ax = Ay /\
        m * Bx = By /\
        m * Cx = Cy /\
        m * Dx = Dy
    )
    : exists (k: R),
    forall (ABCD: (R * R) * (R * R) * (R * R) * (R * R)), 
    let '((Ax, Ay), (Bx, By), (Cx, Cy), (Dx, Dy)) := ABCD in
    (y Ax = Ay /\ 
    y Bx = By /\ 
    y Cx = Cy /\ 
    y Dx = Dy /\ 
    collinear ABCD) ->
    (Ax + Bx + Cx + Dx) / 4 = k <->
    k = putnam_1977_a1_solution.
Proof. Admitted.
