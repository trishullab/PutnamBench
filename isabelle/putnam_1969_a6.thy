theory putnam_1969_a6 imports Complex_Main
begin

theorem putnam_1969_a6:
  fixes x :: "nat \<Rightarrow> real"
  and y :: "nat \<Rightarrow> real"
  assumes hy1: "\<forall>n::nat\<ge>2. y n = x (n-1) + 2*(x n)"
  and hy2: "\<exists>c::real. filterlim y (nhds c) at_top"
  shows "\<exists>C::real. filterlim x (nhds C) at_top"
  sorry

end
