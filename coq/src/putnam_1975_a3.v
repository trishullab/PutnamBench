From mathcomp Require Import all_algebra all_ssreflect.
From mathcomp Require Import reals exp sequences.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition putnam_1975_a3_solution : ((R * R * R) -> (R * R * R)) * ((R * R * R) -> (R * R * R)) :=
    (fun xyz => let '(a, b, c) := xyz in (expR (1/(b-a) * ln (a/b)), expR (1/b * ln (1 - expR ((b/(b-a) * ln (a/b))))), 0),
    fun xyz => let '(a, b, c) := xyz in (0, expR ((1/b) * ln (1 - expR (b/(c-b) * ln (b/c)))), (expR ((ln (b/c)) * 1/(c-b))))). 
Theorem putnam_1975_a3
    (a b c : R)
    (hi : 0 < a /\ a < b < c)
    (P : (R * R * R) -> Prop := fun xyz: R * R * R => let '(x, y, z) := xyz in (x >= 0 /\ y >= 0 /\ z >= 0 /\ expR (b * ln x) + expR (b * ln y) + expR (b * ln z) = 1))
    (f : (R * R * R) -> R := fun xyz: R * R * R => let '(x, y, z) := xyz in expR (a * ln x) + expR (b * ln y) + expR (c * ln z))
    : (P ((fst putnam_1975_a3_solution) (a, b, c)) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) <= f ((fst putnam_1975_a3_solution) (a, b, c))) /\
    (P ((snd putnam_1975_a3_solution) (a, b, c)) /\ forall x y z : R, P (x, y, z) ->
    f (x, y, z) >= f ((snd putnam_1975_a3_solution) (a, b, c))).
Proof. Admitted.