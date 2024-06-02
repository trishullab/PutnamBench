theory putnam_2020_b5 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2020_b5:
  fixes z :: "nat \<Rightarrow> complex"
  assumes hz: "\<forall>n \<in> {1..4}. norm (z n) = 1"
    and hzne1: "\<forall>n \<in> {1..4}. z n \<noteq> 1"
  shows "3 - z 1 - z 2 - z 3 - z 4 + z 1 * z 2 * z 3 * z 4 \<noteq> 0"
  sorry

end
