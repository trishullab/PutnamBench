theory putnam_1988_a4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1988_a4:
  fixes p :: "nat \<Rightarrow> bool"
  defines "p \<equiv> \<lambda> n :: nat. (\<forall> color :: real^2 \<Rightarrow> nat. (\<forall> v :: real^2. color v < n) \<longrightarrow> (\<exists> p q :: real^2. color p = color q \<and> dist p q = 1))"
  shows "let (a, b) = ( (True, False) ) in (p 3 \<longleftrightarrow> a) \<and> (p 9 \<longleftrightarrow> b)"
  sorry

end