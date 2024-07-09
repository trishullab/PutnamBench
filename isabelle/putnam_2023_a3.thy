theory putnam_2023_a3 imports Complex_Main
"HOL-Analysis.Derivative"
begin

definition putnam_2023_a3_solution :: "real" where "putnam_2023_a3_solution \<equiv> undefined"
(* pi / 2 *)
theorem putnam_2023_a3:
  shows "(LEAST r :: real. r > 0 \<and> (\<exists> f g :: real \<Rightarrow> real. Differentiable f UNIV \<and> Differentiable g UNIV \<and>
f 0 > 0 \<and> g 0 = 0 \<and> (\<forall> x :: real. abs (deriv f x) \<le> abs (g x) \<and> abs (deriv g x) \<le> abs(f x)) \<and> f r = 0)) = putnam_2023_a3_solution"
  sorry

end