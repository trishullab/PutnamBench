theory putnam_1983_b2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"

begin

definition putnam_1983_b2_solution :: "bool" where
"putnam_1983_b2_solution \<equiv> undefined"
(* True *)
theorem putnam_1983_b2:
  fixes f :: "nat \<Rightarrow> nat"
  defines "f \<equiv> \<lambda> n. card {M :: nat multiset. (\<forall> m \<in># M. \<exists> k :: nat. m = 2^k) \<and> (\<forall> m \<in># M. count M m \<le> 3) \<and> (\<Sum>\<^sub># M = n)}"
  shows "putnam_1983_b2_solution \<longleftrightarrow> (\<exists> p :: real poly. \<forall> n :: nat. n > 0 \<longrightarrow> \<lfloor>poly p (real n)\<rfloor> = f n)"
  sorry

end