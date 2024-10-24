import Mathlib

/--
Show that $\int_{-100}^{-10} (\frac{x^2-x}{x^3-3x+1})^2\,dx+\int_{\frac{1}{101}}^{\frac{1}{11}} (\frac{x^2-x}{x^3-3x+1})^2\,dx+\int_{\frac{101}{100}}^{\frac{11}{10}} (\frac{x^2-x}{x^3-3x+1})^2\,dx$ is a rational number.
-/
theorem putnam_1993_a5
: ¬Irrational ((∫ x in Set.Ioo (-100) (-10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (1 / 101) (1 / 11), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2)) + (∫ x in Set.Ioo (101 / 100) (11 / 10), (((x ^ 2 - x) / (x ^ 3 - 3 * x + 1)) ^ 2))) :=
sorry
