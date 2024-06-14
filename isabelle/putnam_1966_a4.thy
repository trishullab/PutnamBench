theory putnam_1966_a4 imports
Complex_Main
begin

theorem putnam_1966_a4:
  fixes a :: "nat \<Rightarrow> int"
  assumes ha1: "a 1 = 2"
  and hai: "\<forall> n \<ge> 1. a (n + 1) = (if (\<exists> m :: int. m ^ 2 = a n + 1) then a n + 2 else a n + 1)"
  shows "\<forall> n \<ge> 1. a n = n + round (sqrt n)"
  sorry

end