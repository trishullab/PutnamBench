theory putnam_1973_b1 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of ({1..(2*n+1)} \<Rightarrow> int) *)
theorem putnam_1973_b1:
  fixes n :: nat
  and a :: "nat \<Rightarrow> int"
  assumes h_remove: "\<forall>S::nat set. ((S \<subseteq> {1..(2*n+1)} \<and> card S = 2*n) \<longrightarrow> (\<exists>T::nat set. T \<subseteq> S \<and> card T = n \<and> (\<Sum>i\<in>T. a i) = (\<Sum>i\<in>(S-T). a i)))"
  shows "\<forall>i::nat\<in>{1..(2*n+1)}. \<forall>j::nat\<in>{1..(2*n+1)}. a i = a j"
  sorry

end
