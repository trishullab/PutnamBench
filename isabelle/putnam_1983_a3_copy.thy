theory putnam_1983_a3 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

theorem putnam_1983_a3:
  fixes p :: "nat"
    and F :: "nat \<Rightarrow> nat"
  defines "F \<equiv> \<lambda> n::nat. (\<Sum> i=0..(p-2). ((i + 1) * n^i))"
  assumes hp : "odd p \<and> prime p"
  shows "\<forall> a b :: nat. ((a < p \<and> b < p \<and> a \<noteq> b) \<longrightarrow> \<not>([F a = F b] (mod p)))"
  sorry

end