theory putnam_1995_a4 imports Complex_Main
begin

(* uses (nat \<Rightarrow> int) instead of (Fin n \<Rightarrow> int) *)
theorem putnam_1995_a4:
  fixes n :: nat
  and necklace :: "nat \<Rightarrow> int"
  assumes hn: "n > 0"
  and hnecklacesum: "(\<Sum>i::nat=0..(n-1). necklace i) = n - 1"
  shows "\<exists>cut::nat\<in>{0..(n-1)}. \<forall>k::nat\<in>{0..(n-1)}. (\<Sum>i::nat\<le>k. necklace ((cut + i) mod n)) \<le> k"
  sorry

end
