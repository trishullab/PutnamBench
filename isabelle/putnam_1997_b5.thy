theory putnam_1997_b5 imports Complex_Main
"HOL-Number_Theory.Cong"

begin

theorem putnam_1997_b5:
  fixes n :: "nat"
    and tetration :: "nat \<Rightarrow> nat \<Rightarrow> nat"
  assumes hn : "n \<ge> 2"
    and htetrationbase : "\<forall> a :: nat. tetration a 0 = 1"
    and htetration : "\<forall> a m :: nat. tetration a (m+1) = a^(tetration a m)"
  shows "[tetration 2 n = tetration 2 (n-1)] (mod n)"
  sorry

end