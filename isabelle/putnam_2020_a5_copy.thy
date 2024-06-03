theory putnam_2020_a5 imports Complex_Main
"HOL-Number_Theory.Fib"
begin

theorem putnam_2020_a5:
  fixes a :: "int \<Rightarrow> nat"
  defines "a \<equiv> (\<lambda>n::int. card {S::nat set. finite S \<and> (\<forall>k\<in>S. k > 0) \<and> (\<Sum>k\<in>S. fib k) = n})"
  shows "(GREATEST n::int. a n = 2020) = ( (fib 4040) - 1 )"
  sorry

end
