theory putnam_1995_a5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (nat \<Rightarrow> (real \<Rightarrow> real)) instead of (Fin n \<Rightarrow> (real \<Rightarrow> real)) and (nat \<Rightarrow> nat \<Rightarrow> real) instead of (Fin n \<Rightarrow> Fin n \<Rightarrow> real) *)
theorem putnam_1995_a5:
  fixes hdiffx :: "nat \<Rightarrow> (nat \<Rightarrow> (real \<Rightarrow> real)) \<Rightarrow> bool"
  and ha :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
  and hcomb :: "nat \<Rightarrow> (nat \<Rightarrow> (real \<Rightarrow> real)) \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
  and hxlim :: "nat \<Rightarrow> (nat \<Rightarrow> (real \<Rightarrow> real)) \<Rightarrow> bool"
  defines "hdiffx \<equiv> (\<lambda>(n::nat)(x::nat\<Rightarrow>(real\<Rightarrow>real)). (\<forall>i::nat\<in>{0..(n-1)}. (x i) differentiable_on UNIV))"
  and "ha \<equiv> (\<lambda>(n::nat)(a::nat\<Rightarrow>nat\<Rightarrow>real). (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. a i j > 0))"
  and "hcomb \<equiv> (\<lambda>(n::nat)(x::nat\<Rightarrow>(real\<Rightarrow>real))(a::nat\<Rightarrow>nat\<Rightarrow>real). (\<forall>t::real. \<forall>i::nat\<in>{0..(n-1)}. deriv (x i) t = (\<Sum>j::nat=0..(n-1). (a i j) * ((x j) t))))"
  and "hxlim \<equiv> (\<lambda>(n::nat)(x::nat\<Rightarrow>(real\<Rightarrow>real)). (\<forall>i::nat\<in>{0..(n-1)}. filterlim (x i) (nhds 0) at_top))"
  shows "( True ) \<longleftrightarrow> (\<forall>(n::nat)(x::nat\<Rightarrow>(real\<Rightarrow>real))(a::nat\<Rightarrow>nat\<Rightarrow>real). (n > 0 \<and> hdiffx n x \<and> ha n a \<and> hcomb n x a \<and> hxlim n x) \<longrightarrow> \<not>(\<forall>b::nat\<Rightarrow>real. (\<forall>t::real. (\<Sum>i::nat=0..(n-1). (b i) * ((x i) t)) = 0) \<longrightarrow> (\<forall>i::nat\<in>{0..(n-1)}. b i = 0)))"
  sorry

end
