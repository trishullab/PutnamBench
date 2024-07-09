theory putnam_1965_b2 imports
Complex_Main
"HOL-Library.Cardinality"
begin

theorem putnam_1965_b2:
  fixes n :: "nat"
  and won :: "'n \<Rightarrow> 'n \<Rightarrow> bool"
  and w :: "'n \<Rightarrow> int"
  and l :: "'n \<Rightarrow> int"
  defines "w \<equiv> \<lambda> r :: 'n. \<Sum> j \<in> UNIV. if won r j then 1 else 0"
  and "l \<equiv> \<lambda> r :: 'n. n - 1 - w r"
  assumes ncard: "CARD('n) = n"
  and hn: "n > 1"
  and hirrefl: "\<forall> i :: 'n. won i i = False"
  and hantisymm: "\<forall> i j :: 'n. i \<noteq> j \<longrightarrow> won i j = (\<not>won j i)"
  shows "(\<Sum> r \<in> UNIV. (w r) ^ 2) = (\<Sum> r \<in> UNIV. (l r) ^ 2)"
  sorry

end