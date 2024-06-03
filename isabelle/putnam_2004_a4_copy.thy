theory putnam_2004_a4 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2004_a4:
  fixes n::nat and x::"nat\<Rightarrow>real" and avals::"nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "avals \<equiv> \<lambda>N. \<lambda>a. \<forall>i \<in> {0..<N}. \<forall>j \<in> {0..<n}. (a i j = -1 \<or> a i j = 0 \<or> a i j = 1)"
  assumes npos : "n > 0"
  shows "\<exists>N::nat. \<exists>c::nat\<Rightarrow>rat. \<exists>a. avals N a \<and> ((\<Prod>i=0..<n. x i) = (\<Sum>i=0..<N. (c i * (\<Sum>j=0..<n. a i j * x j)^n)))"
  sorry

end
