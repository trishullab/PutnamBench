theory putnam_2010_b3 imports Complex_Main
begin

(* Note: Boosts Fin 2010 to nat *)
definition putnam_2010_b3_solution :: "nat set" where
"putnam_2010_b3_solution \<equiv> undefined"
(* {1005..} *)
theorem putnam_2010_b3:
  fixes n :: "nat"
    and trans :: "(nat \<Rightarrow> nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
  defines "trans \<equiv> \<lambda> P :: nat \<Rightarrow> nat \<Rightarrow> nat. \<lambda> T :: nat. \<forall> t :: nat < T. \<exists> i \<in> {0..2009}. \<exists> j \<in> {0..2009}. i \<noteq> j \<and> P t i \<ge> i + 1 \<and> P (t + 1) i = P t i - (i + 1) \<and> P (t + 1) j = P t j + (i + 1) \<and> (\<forall> k \<in> {0..2009}. (k \<noteq> i \<longrightarrow> k \<noteq> j \<longrightarrow> P (t + 1) k = P t k))"
  assumes npos : "n > 0"
  shows "(\<forall> B :: nat \<Rightarrow> nat. (((\<Sum> i \<in> {0..2009}. B i) = 2010 * n) \<longrightarrow> (\<exists> (P :: nat \<Rightarrow> nat \<Rightarrow> nat) (T :: nat). P 0 = B \<and> trans P T \<and> (\<forall> i \<in> {0..2009}. P t i = n)))) \<longleftrightarrow> n \<in> putnam_2010_b3_solution"
  sorry

end