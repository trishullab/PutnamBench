theory putnam_1979_a4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_1979_a4_solution :: bool where "putnam_1979_a4_solution \<equiv> undefined"
(* True *)
theorem putnam_1979_a4:
  fixes A :: "(real^2) set \<times> (real^2) set \<Rightarrow> bool"
  and w :: "(real^2) \<times> (real^2) \<Rightarrow> real \<Rightarrow> real^2"
  defines "A \<equiv> \<lambda> (R, B). finite R \<and> finite B \<and> card R = card B \<and> R \<inter> B = {} \<and> 
      \<not>(\<exists> P \<in> R \<union> B. \<exists> Q \<in> R \<union> B. \<exists> N \<in> R \<union> B. Q \<noteq> P \<and> N \<noteq> P \<and> N \<noteq> Q \<and> (\<exists> c :: real. Q - P = c *s (N - P)))"
  and "w \<equiv> \<lambda> (P, Q) x. x *s P + (1 - x) *s Q"
  shows "(\<forall> R B :: (real^2) set. A (R, B) \<longrightarrow> (\<exists> v :: ((real^2) \<times> (real^2)) set. 
      \<forall> L \<in> v. \<forall> M \<in> v. L \<noteq> M \<longrightarrow> (\<forall> x \<in> {0..1}. \<forall> y \<in> {0..1}. w L x \<noteq> w M y) \<and> card v = card R \<and> 
      (\<forall> L \<in> v. fst L \<in> R \<and> snd L \<in> B))) \<longleftrightarrow> putnam_1979_a4_solution"
  sorry

end