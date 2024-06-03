theory putnam_2015_b5 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

theorem putnam_2015_b5:
  fixes P::"nat\<Rightarrow>nat"
  defines "P \<equiv> \<lambda>n. card ({pi::nat\<Rightarrow>nat. pi permutes {1..n} \<and> (\<forall>i\<in>{1..n}. \<forall>j\<in>{1..n}. abs(i - j) = 1 \<longrightarrow> abs(pi i - pi j) \<le> 2)})"
  shows "\<forall>n::nat \<ge> 2. P (n+5) - P (n+4) - P(n+3) + P n = ( 4 )"
  sorry

end
