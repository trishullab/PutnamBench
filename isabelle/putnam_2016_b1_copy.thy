theory putnam_2016_b1 imports
Complex_Main
begin

theorem putnam_2016_b1:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx0: "x 0 = 1"
  and hxn: "\<forall> n :: nat. x (n + 1) = ln (exp (x n) - x n)"
  shows "(\<Sum> n :: nat. x n) = ( exp 1 - 1 )"
  sorry

end