theory putnam_1989_a6 imports
Complex_Main
"HOL-Algebra.Ring"
"HOL-Computational_Algebra.Formal_Power_Series"
"HOL-Library.Cardinality"
begin

fun digits :: "nat \<Rightarrow> nat list" where
  "digits n = (if n = 0 then [] else ([n mod 2] @ digits (n div 2)))"
theorem putnam_1989_a6:
  fixes \<alpha> :: "('a::field) fps"
  and X :: "'a fps"
  defines "\<alpha> \<equiv> Abs_fps (\<lambda> n :: nat. let bin = [1] @ (digits n) @ [1] in (if (\<forall> i \<in> {0 ..< length bin}. \<forall> j \<in> {0 ..< length bin}. i < j \<longrightarrow> bin!i = 1 \<longrightarrow> bin!j = 1 \<longrightarrow> (\<forall> k :: nat. i < k \<longrightarrow> k < j \<longrightarrow> bin!k = 0) \<longrightarrow> even (j - i - 1)) then 1 else 0))"
  and "X \<equiv> Abs_fps (\<lambda> n :: nat. if n = 1 then 1 else 0)"
  assumes hF: "CARD ('a) = 2"
  shows "\<alpha> ^ 3 + X * \<alpha> + 1 = 0"
  sorry

end