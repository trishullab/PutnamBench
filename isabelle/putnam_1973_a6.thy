theory putnam_1973_a6 imports Complex_Main
begin

(* Note: Uses the slope/intercept formulation of line in the plane *)
(* uses (nat \<Rightarrow> real) instead of (Fin 7 \<Rightarrow> real) *)
theorem putnam_1973_a6:
  fixes h_nint :: "nat \<Rightarrow> (nat \<Rightarrow> (real \<times> real)) \<Rightarrow> nat"
  defines "h_nint \<equiv> (\<lambda>(n::nat)(lines::nat\<Rightarrow>(real\<times>real)). card {p::real\<times>real. (\<exists>!S::nat set. S \<subseteq> {0..6} \<and> card S = n \<and> p \<in> (\<Inter>i\<in>S. {pts::real\<times>real. (snd pts = fst (lines i) * fst pts + snd (lines i))}))})"
  shows "\<not>(\<exists>lines::nat\<Rightarrow>(real\<times>real). (\<forall>i::nat\<in>{0..6}. \<forall>j::nat\<in>{0..6}. (i \<noteq> j \<longrightarrow> lines i \<noteq> lines j)) \<and> h_nint 3 lines \<ge> 6 \<and> h_nint 2 lines \<ge> 4)"
  sorry

end
