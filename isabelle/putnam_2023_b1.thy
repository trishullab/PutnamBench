theory putnam_2023_b1 imports
Complex_Main
begin

(* uses "nat \<Rightarrow> nat \<Rightarrow> bool" instead of finite domains of cardinality m and n, respectively *)
definition putnam_2023_b1_solution :: "nat \<Rightarrow> nat \<Rightarrow> nat" where "putnam_2023_b1_solution \<equiv> undefined"
(* \<lambda> m n :: nat. (m + n - 2) choose (m - 1) *)
theorem putnam_2023_b1:
  fixes m n :: nat
  and initcoins :: "nat \<Rightarrow> nat \<Rightarrow> bool"
  and legalmove :: "(nat \<Rightarrow> nat \<Rightarrow> bool) \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> bool) \<Rightarrow> bool"
  and legalseq :: "(nat \<Rightarrow> nat \<Rightarrow> bool) list \<Rightarrow> bool"
  defines "initcoins \<equiv> \<lambda> i j :: nat. i \<le> m - 2 \<and> j \<le> n - 2"
  and "legalmove \<equiv> \<lambda> (coins1 :: nat \<Rightarrow> nat \<Rightarrow> bool) (coins2 :: nat \<Rightarrow> nat \<Rightarrow> bool). \<exists> i j :: nat. i < m - 1 \<and> j < n - 1 \<and> 
        coins1 i j \<and> \<not>coins1 (i + 1) j \<and> \<not>coins1 i (j + 1) \<and> \<not>coins1 (i + 1) (j + 1) \<and> \<not>coins2 i j \<and> \<not>coins2 (i + 1) j \<and> \<not>coins2 i (j + 1) \<and> coins2 (i + 1) (j + 1) \<and>
        (\<forall> i' j' :: nat. ((i', j') \<noteq> (i, j) \<and> (i', j') \<noteq> (i + 1, j) \<and> (i', j') \<noteq> (i, j + 1) \<and> (i', j') \<noteq> (i + 1, j + 1)) \<longrightarrow> coins1 i' j' = coins2 i' j')"
  and "legalseq \<equiv> \<lambda> seq :: (nat \<Rightarrow> nat \<Rightarrow> bool) list. length seq \<ge> 1 \<and> seq!0 = initcoins \<and> (\<forall> i < length seq - 1. legalmove (seq!i) (seq!(i + 1)))"
  assumes mnpos: "m \<ge> 1 \<and> n \<ge> 1"
  shows "card {config :: nat \<Rightarrow> nat \<Rightarrow> bool. legalseq seq \<and> config = last seq} = putnam_2023_b1_solution m n"
  sorry

end