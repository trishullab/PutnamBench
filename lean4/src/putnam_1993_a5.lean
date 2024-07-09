import Mathlib
open BigOperators

theorem putnam_1993_a5
: ¬Irrational ((∫ x in Set.Ioo (-100) (-10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (1 / 101) (1 / 11), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (101 / 100) (11 / 10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2))) :=
sorry
