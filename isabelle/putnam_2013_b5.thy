theory putnam_2013_b5 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of ({1..n} \<Rightarrow> {1..n}) *)
theorem putnam_2013_b5:
  fixes n :: nat
    and k :: nat
    and fiter :: "(nat \<Rightarrow> nat) \<Rightarrow> bool"
  assumes npos: "n \<ge> 1"
    and kinX: "k \<in> {1..n}"
  defines "fiter \<equiv> \<lambda>f. (f ` {1..n} \<subseteq> {1..n} \<and> (\<forall>x::nat\<in>{1..n}. \<exists>j::nat. (f^^j) x \<le> k)) \<and> (\<forall>x::nat > n. f x = 0) \<and> f 0 = 0"
  shows "card {f::nat\<Rightarrow>nat. fiter f} = k * n^(n-1)"

end
