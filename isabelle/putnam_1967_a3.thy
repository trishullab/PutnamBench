theory putnam_1967_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1967_a3_solution :: nat where "putnam_1967_a3_solution \<equiv> undefined"
(* 5 *)
theorem putnam_1967_a3:
  fixes pform :: "(real poly) \<Rightarrow> bool"
  and pzeros :: "(real poly) \<Rightarrow> bool"
  and pall :: "(real poly) \<Rightarrow> bool"
  defines "pform \<equiv> (\<lambda>p::real poly. degree p = 2 \<and> (\<forall>i::nat\<in>{0..2}. coeff p i \<in> \<int>))"
  and "pzeros \<equiv> (\<lambda>p::real poly. (\<exists>z1::real\<in>{0<..<1}. \<exists>z2::real\<in>{0<..<1}. z1 \<noteq> z2 \<and> poly p z1 = 0 \<and> poly p z2 = 0))"
  and "pall \<equiv> (\<lambda>p::real poly. pform p \<and> pzeros p \<and> coeff p 2 > 0)"
  shows "(LEAST coeff2::nat. (\<exists>p::real poly. pall p \<and> coeff2 = coeff p 2)) = putnam_1967_a3_solution"
  sorry

end
