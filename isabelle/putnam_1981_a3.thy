theory putnam_1981_a3 imports Complex_Main "HOL-Analysis.Interval_Integral"
begin

definition putnam_1981_a3_solution::bool where "putnam_1981_a3_solution \<equiv> undefined"
(* False *)
theorem putnam_1981_a3:
  fixes f::"real\<Rightarrow>real"
  defines "f \<equiv> \<lambda>t::real. exp (-t) * interval_lebesgue_integral lebesgue 0 t (\<lambda>y::real. 
    interval_lebesgue_integral lebesgue 0 t (\<lambda>x::real. (exp x - exp y) / (x - y)))"
  shows "(\<exists>L::real. (f \<longlonglongrightarrow> L)) \<longleftrightarrow> putnam_1981_a3_solution"
  sorry

end