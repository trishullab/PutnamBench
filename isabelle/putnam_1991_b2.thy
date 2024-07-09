theory putnam_1991_b2 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_1991_b2:
  fixes f g :: "real \<Rightarrow> real"
  assumes fgnconst: "\<not>(\<exists> c :: real. f = (\<lambda> x. c) \<or> g = (\<lambda> x. c))"
  and fgdiff: "f differentiable_on UNIV \<and> g differentiable_on UNIV"
  and fadd: "\<forall> x y :: real. f (x + y) = f x * f y - g x * g y"
  and gadd: "\<forall> x y :: real. g (x + y) = f x * g y + g x * f y"
  shows "(deriv f 0 = 0) \<longrightarrow> (\<forall> x :: real. (f x) ^ 2 + (g x) ^ 2 = 1)"
  sorry

end