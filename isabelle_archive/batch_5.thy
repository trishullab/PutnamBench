theory batch_5 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2020_a2_solution :: "nat \<Rightarrow> nat" where "putnam_2020_a2_solution \<equiv> undefined"
(* \<lambda> k. 4 ^ k *)
theorem putnam_2020_a2:
  fixes k :: nat
  shows "(\<Sum> j = 0..k. 2 ^ (k - j) * (k + j choose j)) = putnam_2020_a2_solution k"
  sorry

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

theorem putnam_2017_a4:
  fixes N :: nat
  and score :: "nat \<Rightarrow> nat"
  assumes hrng : "\<forall> i \<in> {0 .. 2 * N - 1}. score i \<in> {0 .. 10}"
  and hsurj: "\<forall> k \<in> {0 .. 10}. \<exists> i \<in> {0 .. 2 * N - 1}. score i = k"
  and havg: "(\<Sum> i = 0 .. (2 * N - 1). score i) / (2 * N) = 7.4"
  shows "\<exists> s \<subseteq> {0 .. 2 * N - 1}. card s = N \<and> (\<Sum> i \<in> s. score i) / N = 7.4 \<and> (\<Sum> i \<in> {0 .. 2 * N - 1} - s. score i) / N = 7.4" 
  sorry

definition putnam_2017_b2_solution :: nat where "putnam_2017_b2_solution \<equiv> undefined"
(* 16 *)
theorem putnam_2017_b2:
  fixes S :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  and p :: "nat \<Rightarrow> nat \<Rightarrow> bool"
  and q :: "nat \<Rightarrow> bool"
  defines "S \<equiv> \<lambda> a k. \<Sum> i \<in> {0 .. k - 1}. a + i"
  and "p \<equiv> \<lambda> N k. \<exists> a > 0. S a k = N"
  and "q \<equiv> \<lambda> N. p N 2017 \<and> (\<forall> k > 1. k \<noteq> 2017 \<longrightarrow> \<not>p N k)"
  shows "(LEAST a. a > 0 \<and> q (S a 2017)) = putnam_2017_b2_solution"
  sorry

definition putnam_2017_b4_solution :: real where "putnam_2017_b4_solution \<equiv> undefined"
(* (ln 2) ^ 2 *)
theorem putnam_2017_b4:
  shows "(\<Sum> k :: nat. 3 * ln (4 * k + 2) / (4 * k + 2) - ln (4 * k + 3) / (4 * k + 3) - ln (4 * k + 4) / (4 * k - 4) - ln (4 * k + 5) / (4 * k + 5)) = putnam_2017_b4_solution"
  sorry

definition putnam_2016_a2_solution :: real where "putnam_2016_a2_solution \<equiv> undefined"
(* (3 + sqrt 5) / 2 *)
theorem putnam_2016_a2:
  fixes M :: "nat \<Rightarrow> nat"
  defines "M \<equiv> \<lambda> n. GREATEST m. m choose (n - 1) > (m - 1) choose n"
  shows "(\<lambda> n. M n / n) \<longlonglongrightarrow> putnam_2016_a2_solution"
  sorry

definition putnam_2016_a6_solution :: real where "putnam_2016_a6_solution \<equiv> undefined"
(* 5 / 6 *)  
theorem putnam_2016_a6:
  shows "(LEAST C :: real. \<forall> P :: real poly. (degree P = 3) \<longrightarrow> (\<exists> x \<in> {0..1}. poly P x = 0) \<longrightarrow> set_lebesgue_integral lebesgue {0..1} (\<lambda> x. \<bar>poly P x\<bar>) \<le> C * (GREATEST y. \<exists> x \<in> {0..1}. \<bar>poly P x\<bar> = y)) = putnam_2016_a6_solution"
  sorry

definition putnam_2016_b1_solution :: real where "putnam_2016_b1_solution \<equiv> undefined"
(* exp 1 - 1 *)
theorem putnam_2016_b1:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx0: "x 0 = 1"
  and hxn: "\<forall> n :: nat. x (n + 1) = ln (exp (x n) - x n)"
  shows "(\<Sum> n :: nat. x n) = putnam_2016_b1_solution"
  sorry

end