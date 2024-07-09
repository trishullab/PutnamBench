theory putnam_1993_a2 imports Complex_Main
begin

theorem putnam_1993_a2:
  fixes x::"nat\<Rightarrow>real"
  assumes xn0 : "\<forall>n::nat. x n \<noteq> 0"
    and hx : "\<forall>n \<ge> 1. (x n)^2 - x (n-1) * x (n+1) = 1"
  shows "\<exists>a::real. \<forall>n \<ge> 1. x (n+1) = a * x n - x (n-1)"
  sorry

end