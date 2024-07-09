theory putnam_1992_a2 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_1992_a2_solution :: real where "putnam_1992_a2_solution \<equiv> undefined"
(* 1992 *)
theorem putnam_1992_a2:
  fixes taylorcoeff :: "(real \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> real"
  fixes C :: "real \<Rightarrow> real"
  defines "taylorcoeff \<equiv> (\<lambda>(f::real\<Rightarrow>real)(n::nat). ((deriv^^n) f 0) / (fact n))"
  and "C \<equiv> (\<lambda>\<alpha>::real. taylorcoeff (\<lambda>x::real. (1 + x) powr \<alpha>) 1992)"
  shows "(set_lebesgue_integral lebesgue {0<..<1} (\<lambda>y::real. C (-y-1) * (\<Sum>k::nat=1..1992. 1 / (y + k)))) = putnam_1992_a2_solution"
  sorry

end
