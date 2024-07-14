theory putnam_2021_b3 imports
Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2021_b3_solution :: bool where "putnam_2021_b3_solution \<equiv> undefined"
(* True *)
theorem putnam_2021_b3:
  fixes C1diff :: "(real \<times> real \<Rightarrow> real) \<Rightarrow> bool"
  and C2diff :: "(real \<times> real \<Rightarrow> real) \<Rightarrow> bool"
  and rho :: "(real \<times> real \<Rightarrow> real) \<Rightarrow> real \<times> real \<Rightarrow> real"
  and circint :: "real \<times> real \<Rightarrow> real \<Rightarrow> (real \<times> real) set"
  defines "C1diff \<equiv> \<lambda> h. (\<forall> y. (\<lambda> u. h (u, y)) C1_differentiable_on UNIV) \<and> (\<forall> x. (\<lambda> v. h (x, v)) C1_differentiable_on UNIV)"
  and "C2diff \<equiv> \<lambda> h. C1diff h \<and> C1diff (\<lambda> (x, y). deriv (\<lambda> u. h (u, y)) x) \<and> C1diff (\<lambda> (x, y). deriv (\<lambda> v. h (x, v)) y)"
  and "rho \<equiv> \<lambda> h (x, y). y * deriv (\<lambda> u. h (u, y)) x - x * deriv (\<lambda> v. h (x, v)) y"
  and "circint \<equiv> \<lambda> c r. {p :: real \<times> real. dist p c < r}"
  shows "(\<forall> h :: real \<times> real \<Rightarrow> real. C2diff h \<longrightarrow> (\<forall> d > 0. \<forall> r > 0. d > r \<longrightarrow> (\<exists> c :: real \<times> real. dist c 0 = d \<and> set_lebesgue_integral lebesgue (circint c r) (rho h) = 0))) \<longleftrightarrow> putnam_2021_b3_solution"
  sorry

end