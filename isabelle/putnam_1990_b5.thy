theory putnam_1990_b5 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1990_b5_solution::bool where "putnam_1990_b5_solution \<equiv> undefined"
(* True *)
theorem putnam_1990_b5:
  fixes anpoly::"(nat\<Rightarrow>real) \<Rightarrow> nat \<Rightarrow> (real poly)"
  assumes hanpoly : "\<forall>a. (\<forall> n. a n \<noteq> 0) \<longrightarrow> (\<forall>n.  degree (anpoly a n) = n \<and> (\<forall>i::nat \<in> {0..n}. coeff (anpoly a n) i = a i))"
  shows "(\<exists>a. (\<forall>i::nat. a i \<noteq> 0) \<and> (\<forall>n \<ge> 1. n = card {r::real. poly (anpoly a n) r = 0})) \<longleftrightarrow> putnam_1990_b5_solution"
  sorry

end