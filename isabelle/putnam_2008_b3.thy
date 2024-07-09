theory putnam_2008_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2008_b3_solution :: "real" where
"putnam_2008_b3_solution \<equiv> sqrt 2 / 2"
theorem putnam_2008_b3:
  fixes hypercube :: "(real^4) set"
    and contains :: "real \<Rightarrow> real^4 \<Rightarrow> real^4 \<Rightarrow> real^4 \<Rightarrow> bool"
  defines "hypercube \<equiv> {P :: real^4. \<forall> i. \<bar>P$i\<bar> \<le> 1/(real 2)}"
    and "contains \<equiv> \<lambda> r :: real. \<lambda> center :: real^4. \<lambda> P :: real^4. \<lambda> Q :: real^4. \<forall> s t :: real. (s *s P + t *s Q \<noteq> 0 \<and> dist 0 (s *s P + t *s Q) = r) \<longrightarrow> center + s *s P + t *s Q \<in> hypercube"
  shows "(\<exists> center P Q :: real^4. contains putnam_2008_b3_solution center P Q) \<and> (\<forall> r > putnam_2008_b3_solution. \<not>(\<exists> center P Q :: real^4. contains r center P Q))"
  sorry

end