theory putnam_2009_b6 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of ({0..2009} \<Rightarrow> int) *)
theorem putnam_2009_b6:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "\<exists>a::nat\<Rightarrow>int. a 0 = 0 \<and> a 2009 = n \<and> (\<forall>i::nat\<in>{1..2009}. (\<exists>j::nat<i. \<exists>k::nat. a i = a j + 2^k) \<or> (\<exists>b::nat<i. \<exists>c::nat<i. a b > 0 \<and> a c > 0 \<and> a i = (a b) mod (a c)))"
  sorry

end
