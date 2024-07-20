theory putnam_2020_b4 imports
Complex_Main
begin

definition putnam_2020_b4_solution :: real where "putnam_2020_b4_solution \<equiv> undefined"
(* 1 / 4040 *)
theorem putnam_2020_b4:
  fixes V :: "nat \<Rightarrow> (nat \<Rightarrow> int) set"
  and q :: "nat \<Rightarrow> (nat \<Rightarrow> int) \<Rightarrow> real"
  and M :: "nat \<Rightarrow> real"
  defines "V \<equiv> \<lambda> n. {s. s 0 = 0 \<and> (\<forall> j \<ge> 2 * n. s j = 0) \<and> (\<forall> j \<in> {1 .. (2 * n)}. \<bar>s j - s (j - 1)\<bar> = 1)}"
  and "q \<equiv> \<lambda> n s. 1 + (\<Sum> j = 1 .. 2 * n - 1. 3 powr (s j))"
  and "M \<equiv> \<lambda> n. (\<Sum> v \<in> V n. 1 / (q n v)) / card (V n)"
  shows "M 2020 = putnam_2020_b4_solution"
  sorry

end