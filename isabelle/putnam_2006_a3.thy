theory putnam_2006_a3 imports
Complex_Main
begin

theorem putnam_2006_a3:
  fixes x :: "nat \<Rightarrow> nat"
  assumes hxlo: "\<forall> k \<in> {1 .. 2006}. x k = k"
  and hxhi: "\<forall> k \<ge> 2006. x (k + 1) = x k + x (k - 2005)"
  shows "\<exists> i :: nat. i > 0 \<and> (\<forall> j \<in> {0 ..< 2005}. 2006 dvd x (i + j))"
  sorry

end