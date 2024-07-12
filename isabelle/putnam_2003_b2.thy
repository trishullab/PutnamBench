theory putnam_2003_b2 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat \<Rightarrow> rat) instead of (Fin n \<Rightarrow> {1..n} \<Rightarrow> rat) *)
theorem putnam_2003_b2:
  fixes n :: nat
  and seq :: "nat \<Rightarrow> nat \<Rightarrow> rat"
  assumes hn: "n > 0"
  and hinit: "\<forall>j::nat\<in>{1..n}. seq 0 j = 1 / (rat_of_nat j)"
  and havg: "\<forall>k::nat\<in>{1..(n-1)}. \<forall>j::nat\<in>{1..(n-k)}. seq k j = (seq (k-1) j + seq (k-1) (j+1)) / 2"
  shows "seq (n-1) 1 < 2 / (rat_of_nat n)"
  sorry

end
