theory putnam_1972_b6 imports Complex_Main
"HOL-Analysis.Elementary_Metric_Spaces"
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin k \<Rightarrow> nat) *)
theorem putnam_1972_b6:
  fixes k :: nat
  and n :: "nat \<Rightarrow> nat"
  and zpoly :: "complex \<Rightarrow> complex"
  assumes hk: "k \<ge> 1"
  and hn: "\<forall>i::nat\<in>{0..(k-1)}. n i > 0"
  and hn': "\<forall>i::nat\<in>{0..(k-1)}. \<forall>j::nat\<in>{0..(k-1)}. (i < j \<longrightarrow> n i < n j)"
  defines "zpoly \<equiv> (\<lambda>z::complex. 1 + (\<Sum>i::nat=0..(k-1). z^(n i)))"
  shows "\<forall>z::complex. (z \<in> ball 0 ((sqrt 5 - 1)/2) \<longrightarrow> zpoly z \<noteq> 0)"
  sorry

end
