theory putnam_1974_a3 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

theorem putnam_1974_a3:
  assumes assmption: "\<forall>p::nat. (prime p \<and> p > 2) \<longrightarrow> ((\<exists>m n::nat. p = m^2 + n^2) \<longleftrightarrow> [p = 1] (mod 4))"
  shows "\<forall>p::nat. ((prime p \<and> p > 2 \<and> (\<exists>x y::int. p = x^2 + 16*y^2)) \<longleftrightarrow> p \<in> fst ( ({p::nat. prime p \<and> [p = 1] (mod 8)}, {p::nat. prime p \<and> [p = 5] (mod 8)}) )) \<and> ((prime p \<and> p > 2 \<and> (\<exists>x y::int. p = 4*x^2 + 4*x*y + 5*y^2)) \<longleftrightarrow> p \<in> snd ( ({p::nat. prime p \<and> [p = 1] (mod 8)}, {p::nat. prime p \<and> [p = 5] (mod 8)}) ))"
  sorry

end
