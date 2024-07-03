theory putnam_2018_a6 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2018_a6:
  fixes A B C D :: "real^2"
  and PPprops :: "real^2 \<Rightarrow> real^2 \<Rightarrow> bool"
  defines "PPprops \<equiv> \<lambda> P1 P2 :: real^2. P1 \<noteq> P2 \<and> (\<exists> q :: rat. (dist P1 P2) ^ 2 = q)"
  assumes ABCDnoline: "\<not>collinear {A, B, C} \<and> \<not>collinear {A, B, D} \<and> \<not>collinear {A, C, D} \<and> \<not>collinear {B, C, D}"
  and ABCDsqrrat: "PPprops A B \<and> PPprops A C \<and> PPprops A D \<and> PPprops B C \<and> PPprops B D \<and> PPprops C D"
  shows "\<exists> q :: rat. emeasure lebesgue (convex hull {A, B, C}) / emeasure lebesgue (convex hull {A, B, D}) = real_of_rat q"
  sorry

end