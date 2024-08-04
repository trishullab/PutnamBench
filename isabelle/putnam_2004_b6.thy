theory putnam_2004_b6 imports Complex_Main
begin

theorem putnam_2004_b6:
  fixes A B::"nat set" 
    and N::"real\<Rightarrow>nat" 
    and b::"nat\<Rightarrow>nat"
  defines "N \<equiv> \<lambda>x::real. card {a\<in>A. a \<le> x}"
    and "B \<equiv> {b'. b' > 0 \<and> (\<exists>a \<in> A. \<exists>a' \<in> A. b' = a - a')}"
  assumes Anempty : "card A > 0"
    and Apos : "\<forall>a \<in> A. a > 0"
    and hbB : "B = image b UNIV"
    and hbasc : "\<forall>i::nat. b i < b (i+1)"
  shows "(\<forall>r::nat. \<exists>i::nat. (b (i+1) - b i) \<ge> r) \<longrightarrow> ((\<lambda>x::real. N x / x) \<longlongrightarrow> 0) at_top"
  sorry

end
