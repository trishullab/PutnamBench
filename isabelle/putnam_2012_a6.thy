theory putnam_2012_a6 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

(* NOTE: this formalization differs from the original problem wording in only allowing axis-aligned rectangles.
The problem is solvable given this weaker hypothesis. *)
definition putnam_2012_a6_solution::bool where "putnam_2012_a6_solution \<equiv> undefined"
(* True *)
theorem putnam_2012_a6:
  fixes p::"((real \<times> real) \<Rightarrow> real) \<Rightarrow> bool"
  defines "p \<equiv> \<lambda>f. continuous_on UNIV f \<and> (\<forall>x1 x2 y1 y2::real. x2 > x1 \<longrightarrow> y2 > y1 \<longrightarrow> (x2 - x1) * (y2 - y1) = 1
    \<longrightarrow>  (set_lebesgue_integral lebesgue {(x, y). x \<ge> x1 \<and> x \<le> x2 \<and> y \<ge> y1 \<and> y \<le> y2} f = 0))"
  shows "(\<forall>f::(real \<times> real) \<Rightarrow> real. \<forall>x y ::real. p f \<longrightarrow> f (x, y) = 0) \<longleftrightarrow> putnam_2012_a6_solution"
  sorry

end
