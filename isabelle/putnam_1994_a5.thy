theory putnam_1994_a5 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin 1994 \<Rightarrow> nat) *)
theorem putnam_1994_a5:
  fixes r :: "nat \<Rightarrow> real"
  and S :: "real set"
  assumes rpos: "\<forall>i::nat. r i > 0"
  and rlim: "filterlim r (nhds 0) at_top"
  and hS: "S \<equiv> {x::real. (\<exists>i::nat\<Rightarrow>nat. (\<forall>j::nat\<in>{0..1993}. \<forall>k::nat\<in>{0..1993}. (j < k \<longrightarrow> i j < i k)) \<and> (x = (\<Sum>j::nat=0..1993. r (i j))))}"
  shows "\<forall>a b::real. a < b \<longrightarrow> (\<exists>c d::real. a \<le> c \<and> c < d \<and> d \<le> b \<and> {c<..<d} \<inter> S = {})"
  sorry

end
