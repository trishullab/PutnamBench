theory putnam_2003_a5 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin (2*m) \<Rightarrow> int) *)
theorem putnam_2003_a5:
  fixes n :: nat
  and dyckpath :: "nat \<Rightarrow> ((nat \<Rightarrow> int) set)"
  and noevenreturn :: "nat \<Rightarrow> ((nat \<Rightarrow> int) set)"
  assumes npos: "n > 0"
  defines "dyckpath \<equiv> (\<lambda>m::nat. {p::nat\<Rightarrow>int. (\<forall>k::nat\<ge>2*m. p k = 0) \<and>
  p ` {0..(2*m-1)} \<subseteq> {-1, 1} \<and> (\<Sum>k::nat\<in>{0..(2*m-1)}. p k) = 0 \<and> (\<forall>j::nat\<in>{0..(2*m-1)}. (\<Sum>k::nat\<in>{0..j}. p k) \<ge> 0)})"
  and "noevenreturn \<equiv> (\<lambda>m::nat. {p::nat\<Rightarrow>int. (\<forall>k::nat\<ge>2*m. p k = 0) \<and>
  \<not>(\<exists>i::nat\<in>{0..(2*m-1)}. \<exists>j::nat\<in>{0..(2*m-1)}. i < j \<and> p i = 1 \<and> (\<forall>k::nat\<in>{(i+1)..j}. p i = -1) \<and> even (j - i) \<and> (\<Sum>k::nat\<in>{0..j}. p k) = 0)})"
  shows "\<exists>f::(nat\<Rightarrow>int)\<Rightarrow>(nat\<Rightarrow>int). (\<forall>y\<in>(dyckpath (n-1)). \<exists>!x::nat\<Rightarrow>int. x \<in> (dyckpath n \<inter> noevenreturn n) \<and> f x = y)"
  sorry

end
