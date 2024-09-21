From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences boolp normedtype.
Import Order.TTheory Order.Syntax GRing.Theory Num.Def Num.Theory Monoid Monoid.Theory.
Import numFieldNormedType.Exports.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.
Local Open Scope seq_scope.

Variable R : realType.
Definition sq_dist (p q : (R * R)%type) := (p.1 - q.1) ^ 2 + (p.2 - q.2) ^ 2.
Definition ind_is_unit_dist_apart (p q : (R * R)%type) : R := if sq_dist p q == 1 then 1%R else 0%R.
Theorem putnam_1978_a6
    (n : nat)
    (npos : gt n 0)
    (A : seq (R*R))
    (hA : size A = n /\ uniq A)
    (unit_count : R)
    :  \sum_(p <- A) ((\sum_(q <- A) ind_is_unit_dist_apart p q)) <= 2 * (2 * expR (3/2 * ln n%:R)).
Proof. Admitted. 

