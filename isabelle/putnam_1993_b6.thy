theory putnam_1993_b6 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_1993_b6:
  fixes S::"nat\<Rightarrow>nat" and f::"nat \<Rightarrow> nat \<Rightarrow> (nat\<Rightarrow>nat) \<Rightarrow> (nat\<Rightarrow>nat)"
  assumes Spos : "\<forall>i \<in> {0..<3}. S i > 0"
    and hf : "\<forall>i \<in> {0..<3}. \<forall>j \<in> {0..<3}. \<forall>k \<in> {0..<3}. (i \<noteq> j \<and> i \<noteq> k \<and> j \<noteq> k) \<longrightarrow> (\<forall>S'::nat\<Rightarrow>nat.
      if (S' i \<le> S' j) then ( (f i j S') i = 2 * S' i \<and> (f i j S') j = S' j  - S' i \<and> (f i j S') k = S' k) else (f i j S' = S'))"
  shows "\<exists>N::nat. \<exists>Ss::nat\<Rightarrow>(nat\<Rightarrow>nat). Ss 0 = S \<and> (\<exists>i \<in> {0..<3}. Ss N i = 0) \<and> 
    (\<forall>n \<in> {0..<N}. \<exists>i \<in> {0..<3}. \<exists>j \<in> {0..<3}. (i \<noteq> j \<and> f i j (Ss n) = Ss (n+1)))"
  sorry

end