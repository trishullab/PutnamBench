theory putnam_1992_a1 imports Complex_Main
begin

theorem putnam_1992_a1:
  fixes f :: "int \<Rightarrow> int"
  shows "(f = (\<lambda>n::int. 1 - n)) \<longleftrightarrow> ((\<forall>n::int. f (f n) = n) \<and> (\<forall>n::int. f (f (n+2) + 2) = n) \<and> f 0 = 1)"
  sorry

end
