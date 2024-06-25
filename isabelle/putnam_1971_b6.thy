theory putnam_1971_b6 imports Complex_Main
begin

theorem putnam_1971_b6:
  fixes \<delta> :: "nat \<Rightarrow> nat"
  defines "\<delta> \<equiv> (\<lambda>n::nat. (GREATEST t::nat. odd t \<and> t dvd n))"
  shows "\<forall>x::nat. (x > 0 \<longrightarrow> \<bar>(\<Sum>i::nat=1..x. (\<delta> i)/(i :: real)) - 2*x/3\<bar> < 1)"
  sorry

end
