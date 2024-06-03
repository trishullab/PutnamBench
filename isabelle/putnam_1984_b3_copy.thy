theory putnam_1984_b3 imports Complex_Main
"HOL-Library.Cardinality"
begin

theorem putnam_1984_b3:
  shows "((CARD('a) \<ge> 2 \<and> (\<exists> n :: nat. CARD('a) = n)) \<longrightarrow> (\<exists> mul :: 'a \<Rightarrow> 'a \<Rightarrow> 'a. \<forall> x y z :: 'a. (mul x z = mul y z \<longrightarrow> x = y) \<and> (mul x (mul y z) \<noteq> mul (mul x y) z))) \<longleftrightarrow> ( True )"
  sorry

end