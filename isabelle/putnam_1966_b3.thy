theory putnam_1966_b3 imports
Complex_Main
begin

theorem putnam_1966_b3:
  fixes p :: "nat \<Rightarrow> real"
  assumes hpos: "\<forall> n :: nat. p n > 0"
  and hconv: "convergent (\<lambda> m. \<Sum> n = 1..m. 1 / p n)"
  shows "convergent (\<lambda> m. \<Sum> n = 1..m. (p n) * n ^ 2 / (\<Sum> i = 1..n. p i) ^ 2)"
  sorry

end