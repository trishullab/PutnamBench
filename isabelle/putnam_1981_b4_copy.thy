theory putnam_1981_b4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Cartesian_Space"
begin

theorem putnam_1981_b4:
  fixes VAB :: "(real^7^5) set \<Rightarrow> bool"
  and Vrank :: "(real^7^5) set \<Rightarrow> nat \<Rightarrow> bool"
  defines "VAB \<equiv> \<lambda> V :: (real^7^5) set. \<forall> A \<in> V. \<forall> B \<in> V. \<forall> r s :: real. r *\<^sub>R A + s *\<^sub>R B \<in> V"
  and "Vrank \<equiv> \<lambda> (V :: (real^7^5) set) (k :: nat). \<exists> A \<in> V. rank A = k"
  shows "(\<forall> V :: (real^7^5) set. (VAB V \<and> Vrank V 0 \<and> Vrank V 1 \<and> Vrank V 2 \<and> Vrank V 4 \<and> Vrank V 5) \<longrightarrow> Vrank V 3) \<longleftrightarrow> ( False )"
  sorry

end