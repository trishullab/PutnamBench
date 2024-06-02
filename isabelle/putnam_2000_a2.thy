theory putnam_2000_a2 imports Complex_Main
begin

definition sum_of_squares:: "int \<Rightarrow> bool" where
  "sum_of_squares n \<equiv> \<exists>a b::int. n = a^2 + b^2"

theorem putnam_2000_a2:
  shows "\<forall>n :: int. \<exists>m::int. m > n \<and> 
    sum_of_squares m \<and> sum_of_squares (m+1) \<and> sum_of_squares (m+2)"
  sorry

end
