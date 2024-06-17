theory putnam_1965_b5 imports
Complex_Main
"HOL-Library.Cardinality"
begin

theorem putnam_1965_b5:
  fixes E V :: nat
  and simple :: "(('v::finite) \<times> 'v) set \<Rightarrow> bool"
  defines "V \<equiv> CARD('v)"
  and "simple \<equiv> \<lambda> G. (\<forall> v :: 'v. (v, v) \<notin> G) \<and> (\<forall> v w :: 'v. (v, w) \<in> G \<longrightarrow> (w, v) \<in> G)" 
  assumes hE : "4 * E \<le> V ^ 2"
  shows "\<exists> G :: ('v \<times> 'v) set. simple G \<and> card G = 2 * E \<and> (\<not>(\<exists> a b c :: 'v. (b, c) \<in> G \<and> (c, a) \<in> G \<and> (a, b) \<in> G))"
  sorry

end