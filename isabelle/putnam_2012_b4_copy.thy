theory putnam_2012_b4 imports Complex_Main
begin

theorem putnam_2012_b4:
  fixes a::"nat\<Rightarrow>real"
  assumes ha0 : "a 0 = 1"
    and han : "\<forall>n::nat. a (n+1) = a n + exp (-a n)"
  shows "(convergent (\<lambda>n. a n - ln n)) \<longleftrightarrow> ( True )"
  sorry

end
