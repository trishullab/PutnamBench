theory putnam_1990_a5 imports
Complex_Main
begin

definition putnam_1990_a5_solution :: bool where "putnam_1990_a5_solution \<equiv> undefined"
(* False *)  
theorem putnam_1990_a5:
  fixes matmul :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real)"
  and iszero :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
  and I :: "nat \<Rightarrow> nat \<Rightarrow> real"
  and zeroprod :: "nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) list \<Rightarrow> bool"
  defines "matmul \<equiv> \<lambda> n :: nat. \<lambda> A B :: nat \<Rightarrow> nat \<Rightarrow> real. \<lambda> i j :: nat. \<Sum> k < n. A i k * B k j"
  and "iszero \<equiv> \<lambda> n :: nat. \<lambda> A :: nat \<Rightarrow> nat \<Rightarrow> real. \<forall> i < n. \<forall> j < n. A i j = 0"
  and "I \<equiv> \<lambda> i j :: nat. if i = j then 1 else 0"
  and "zeroprod \<equiv> \<lambda> n :: nat. \<lambda> l :: (nat \<Rightarrow> nat \<Rightarrow> real) list. iszero n (foldl (matmul n) I l)"
  shows "(\<forall> n \<ge> 1. \<forall> A B :: nat \<Rightarrow> nat \<Rightarrow> real. zeroprod n [A, B, A, B] \<longrightarrow> zeroprod n [B, A, B, A]) \<longleftrightarrow> putnam_1990_a5_solution"
  sorry

end