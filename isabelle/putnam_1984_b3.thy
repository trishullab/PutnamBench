theory putnam_1984_b3 imports Complex_Main
"HOL-Library.Cardinality"
begin

definition putnam_1984_b3_solution :: "bool" where "putnam_1984_b3_solution \<equiv> undefined"
(* True *)
theorem putnam_1984_b3:
  shows "((CARD('a) \<ge> 2 \<and> (\<exists> n :: nat. CARD('a) = n)) \<longrightarrow> (\<exists> mul :: 'a \<Rightarrow> 'a \<Rightarrow> 'a. \<forall> x y z :: 'a. (mul x z = mul y z \<longrightarrow> x = y) \<and> (mul x (mul y z) \<noteq> mul (mul x y) z))) \<longleftrightarrow> putnam_1984_b3_solution"
  sorry

end