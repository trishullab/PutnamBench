theory putnam_2018_b6 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of (Fin 2018 \<Rightarrow> nat) *)
theorem putnam_2018_b6:
  fixes S :: "(nat \<Rightarrow> nat) set"
  assumes hS: "S \<equiv> {s::nat\<Rightarrow>nat. (\<forall>i::nat\<in>{0..2017}. s i \<in> {1,2,3,4,5,6,10}) \<and> (\<Sum>i::nat=0..2017. s i) = 3860 \<and> (\<forall>i::nat>2017. s i = 0)}"
  shows "card S \<le> 2^3860 * (2018/2048)^2018"
  sorry

end