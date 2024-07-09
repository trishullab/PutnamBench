theory putnam_2009_b1 imports Complex_Main
"HOL-Computational_Algebra.Primes"
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin k \<Rightarrow> nat) and (Fin m \<Rightarrow> nat) *)
theorem putnam_2009_b1:
  fixes isquotprodprimefact :: "rat \<Rightarrow> bool"
  defines "isquotprodprimefact \<equiv> (\<lambda>q::rat. (\<exists>(k::nat)(m::nat)(a::nat\<Rightarrow>nat)(b::nat\<Rightarrow>nat).
    (\<forall>i::nat\<in>{0..(k-1)}. prime (a i)) \<and> (\<forall>j::nat\<in>{0..(m-1)}. prime (b j))
    \<and> q = (\<Prod>i::nat=0..(k-1). fact (a i)) / (\<Prod>j::nat=0..(m-1). fact (b j))))"
  shows "\<forall>q::rat. (q > 0 \<longrightarrow> isquotprodprimefact q)"
  sorry

end
