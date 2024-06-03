theory putnam_1979_a2 imports
Complex_Main
begin

theorem putnam_1979_a2:
  shows "\<forall> k :: real. (\<exists> f :: real \<Rightarrow> real. continuous_on UNIV f \<and> (\<forall> x :: real. f (f x) = k * x ^ 9)) \<longleftrightarrow> ( \<lambda> k :: real. k \<ge> 0 ) k"
  sorry 

end