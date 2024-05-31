theory putnam_1976_b6 imports Complex_Main
begin

theorem putnam_1976_b6:
  fixes \<sigma> :: "nat \<Rightarrow> nat"
    and quasiperfect :: "nat \<Rightarrow> bool"
  defines "\<sigma> \<equiv> \<lambda> N :: nat. (\<Sum> d \<in> {k :: nat. k dvd N}. d)"
    and "quasiperfect \<equiv> \<lambda> N :: nat. \<sigma> N = 2 * N + 1"
  shows "\<forall> N :: nat. quasiperfect N \<longrightarrow> (\<exists> m :: int. odd m \<and> m^2 = N)"
  sorry

end