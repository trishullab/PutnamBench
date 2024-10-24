theory putnam_1991_a4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Elementary_Metric_Spaces"
begin

definition putnam_1991_a4_solution :: bool where "putnam_1991_a4_solution \<equiv> undefined"
(* True *)
theorem putnam_1991_a4:
  fixes climit :: "(nat \<Rightarrow> real^2) \<Rightarrow> bool"
    and rareas :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
    and crline :: "(nat \<Rightarrow> real^2) \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "climit \<equiv> \<lambda> c. \<not>(\<exists> p :: real^2. \<forall> \<epsilon> :: real. \<epsilon> > 0 \<longrightarrow> (\<exists> f :: nat \<Rightarrow> nat. strict_mono f \<and> (\<forall> i :: nat. c (f i) \<in> ball p \<epsilon>)))"
    and "rareas \<equiv> \<lambda> r. convergent (\<lambda> N. \<Sum> i = 0 .. N. pi * (r i) ^ 2)"
    and "crline \<equiv> \<lambda> c r. \<forall> v w :: real^2. w \<noteq> 0 \<longrightarrow> (\<exists> i :: nat. {p :: real^2. \<exists> t :: real. p = v + t *s w} \<inter> cball (c i) (r i) \<noteq> {})"
  shows "(\<exists> c :: nat \<Rightarrow> real^2. \<exists> r :: nat \<Rightarrow> real. (\<forall> i :: nat. r i \<ge> 0) \<and> climit c \<and> rareas r \<and> crline c r) \<longleftrightarrow> putnam_1991_a4_solution"
  sorry
