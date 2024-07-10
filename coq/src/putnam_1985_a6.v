From mathcomp Require Import ssralg ssrnum fintype seq poly. 
Open Scope ring_scope.
Variable (R: numDomainType).
Definition putnam_1985_a6_solution : {poly R} := 6%:R *: 'X^2 + 5%:R *: 'X + 1%:R.
Theorem putnam_1985_a6
    (g : {poly R} := 3%:R *: 'X^2 + 7%:R *: 'X + 2%:R)
    (Comp_poly_n := fix comp_poly_n (p : {poly R}) (n : nat) : {poly R} :=
        match n with 
        | O => 1
        | S n' => comp_poly (comp_poly_n p n') p
    end)
    : forall (f: {poly R}), f`_0 = 0 -> 
    forall (n: nat),
    let F : {poly R} := Comp_poly_n f n in
    let G : {poly R} := Comp_poly_n g n in
    (\sum_(i < size F) F`_i)  = (\sum_(i < size G) G`_i)
    <-> f = putnam_1985_a6_solution.
Proof. Admitted.
