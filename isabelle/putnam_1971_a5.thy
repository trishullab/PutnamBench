theory putnam_1971_a5 imports Complex_Main
begin

definition putnam_1971_a5_solution :: "int \<times> int" where
"putnam_1971_a5_solution \<equiv> undefined"
(* (11,8) *)
theorem putnam_1971_a5:
  fixes a b :: "int"
    and pab :: "int \<Rightarrow> int \<Rightarrow> bool"
  defines "pab \<equiv> \<lambda> x y :: int. card {s :: nat. \<not>(\<exists> m n :: nat. m * x + n * y = s)} = 35 \<and> (\<not>(\<exists> m n :: nat. m * x + n * y = 58))"
  assumes hab : "a > 0 \<and> b > 0 \<and> a > b"
  shows "pab a b \<longleftrightarrow> a = fst putnam_1971_a5_solution \<and> b = snd putnam_1971_a5_solution"
  sorry

end