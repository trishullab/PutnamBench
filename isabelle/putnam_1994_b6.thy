theory putnam_1994_b6 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

theorem putnam_1994_b6:
  fixes n :: "nat \<Rightarrow> int"
  assumes hn: "\<forall>a::nat. n a = 101*a - 100 * 2^a"
  shows "\<forall>a::nat\<in>{0..99}. \<forall>b::nat\<in>{0..99}. \<forall>c::nat\<in>{0..99}. \<forall>d::nat\<in>{0..99}. (([n a + n b = n c + n d] (mod 10100)) \<longrightarrow> {a, b} = {c, d})"
  sorry

end
