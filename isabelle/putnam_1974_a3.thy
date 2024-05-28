theory putnam_1974_a3 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_1974_a3_solution :: "(nat set) \<times> (nat set)" where "putnam_1974_a3_solution \<equiv> undefined"
(* ({p::nat. prime p \<and> [p = 1] (mod 8)}, {p::nat. prime p \<and> [p = 5] (mod 8)}) *)
theorem putnam_1974_a3:
  assumes assmption: "\<forall>p::nat. (prime p \<and> p > 2) \<longrightarrow> ((\<exists>m n::nat. p = m^2 + n^2) \<longleftrightarrow> [p = 1] (mod 4))"
  shows "\<forall>p::nat. ((prime p \<and> p > 2 \<and> (\<exists>x y::int. p = x^2 + 16*y^2)) \<longleftrightarrow> p \<in> fst putnam_1974_a3_solution) \<and> ((prime p \<and> p > 2 \<and> (\<exists>x y::int. p = 4*x^2 + 4*x*y + 5*y^2)) \<longleftrightarrow> p \<in> snd putnam_1974_a3_solution)"
  sorry

end
