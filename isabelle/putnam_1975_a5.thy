theory putnam_1975_a5 imports
Complex_Main
"HOL-Library.Interval"
"HOL-Analysis.Derivative"
begin

(* Notes: Only the part showing a constant exists, and only for closed intervals; assumes y1 and y2 satisfy the differential equation everywhere *)
theorem putnam_1975_a5:
  fixes I :: "real interval"
  and f y1 y2 :: "real \<Rightarrow> real"
  assumes hfcont: "continuous_on UNIV f"
  and hycdiff: "y1 C1_differentiable_on UNIV \<and> (deriv y1) C1_differentiable_on UNIV \<and> y2 C1_differentiable_on UNIV \<and> (deriv y2) C1_differentiable_on UNIV"
  and hy1sol: "\<forall> x :: real. (deriv^^2) y1 x = (f x) * (y1 x)"
  and hy2sol: "\<forall> x :: real. (deriv^^2) y2 x = (f x) * (y2 x)"
  and hylinindep: "\<forall> c1 c2 :: real. (\<forall> x :: real. c1 * y1 x + c2 * y2 x = 0) \<longrightarrow> (c1 = 0 \<and> c2 = 0)"
  and hyI: "\<forall> x \<in> set_of I. y1 x > 0 \<and> y2 x > 0"
  shows "\<exists> c :: real. c > 0 \<and> (let z :: real \<Rightarrow> real = \<lambda> x :: real. c * sqrt ((y1 x) * (y2 x)) in (\<forall> x \<in> set_of I. (deriv^^2) z x + 1/(z x)^3 = (f x) * (z x)))"
  sorry

end