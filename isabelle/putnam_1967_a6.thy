theory putnam_1967_a6 imports Complex_Main
begin

(* Note: Boosts from Fin 4 to nat *)
definition putnam_1967_a6_solution :: "nat" where
"putnam_1967_a6_solution \<equiv> undefined"
(* 8 *)
theorem putnam_1967_a6:
  fixes abneq0 :: "(nat \<Rightarrow> real) \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
    and numtuples :: "(nat \<Rightarrow> real) \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> nat"
  defines "abneq0 \<equiv> \<lambda> a :: nat \<Rightarrow> real. \<lambda> b :: nat \<Rightarrow> real. a 0 * b 1 - a 1 * b 0 \<noteq> 0"
  assumes hnumtuples : "\<forall> a b :: nat \<Rightarrow> real. numtuples a b = card {s :: nat \<Rightarrow> real. (\<forall> i \<ge> 4. s i = 0) \<and> (\<exists> x :: nat \<Rightarrow> real. (\<forall> i \<in> {0,1,2,3}. x i \<noteq> 0) \<and> (\<Sum> i \<in> {0,1,2,3}. a i * x i) = 0 \<and> (\<Sum> i \<in> {0,1,2,3}. b i * x i) = 0 \<and> (\<forall> i \<in> {0,1,2,3}. s i = sgn (x i)))}"
  shows "(\<exists> a b :: nat \<Rightarrow> real. abneq0 a b \<and> numtuples a b = putnam_1967_a6_solution) \<and> (\<forall> a b :: nat \<Rightarrow> real. abneq0 a b \<longrightarrow> numtuples a b \<le> putnam_1967_a6_solution)"
  sorry

end