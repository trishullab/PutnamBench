theory putnam_2021_a5 imports Complex_Main
begin

theorem putnam_2021_a5:
  fixes j :: nat
  and A :: "nat set"
  and S :: "nat \<Rightarrow> nat"
  assumes hA : "A = {n::nat. 1 \<le> n \<and> n \<le> 2021 \<and> gcd n 2021 = 1}"
  and hS : "\<forall>j'::nat. S j' = (\<Sum>n\<in>A. n^j')"
  shows "(2021 dvd (S j)) \<longleftrightarrow> j \<in> ( {j::nat. \<not>(42 dvd j) \<and> \<not>(46 dvd j)} )"
  sorry

end
