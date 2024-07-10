Require Import Nat PeanoNat Reals NewtonInt. From mathcomp Require Import bigop fintype ssrnat ssrnum ssralg fintype poly seq.
Open Scope ring_scope.
Definition putnam_2019_b5_solution (j k : nat) := j = 2019%nat /\ k = 1010%nat.
Theorem putnam_2019_b5
    (F := fix f (n: nat) : nat :=
        match n with
        | O => O
        | S O => 1%nat
        | S ((S n'') as n') => add (f n') (f n'')
    end)
    (R: numDomainType) 
    (p: {poly R}) 
    (hp: forall (n: nat), and (le 0%nat n) (le n 1008%nat) -> size p = 1008%nat /\ (p.[2*n%:R+1]) = (F (add (mul 2 n) 1%nat))%:R)
    (j k: nat)
    (hjk := p.[2019] = (F j)%:R - (F k)%:R)
    : putnam_2019_b5_solution j k.
Proof. Admitted. 
