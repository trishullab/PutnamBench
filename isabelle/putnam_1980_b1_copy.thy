theory putnam_1980_b1 imports
Complex_Main
begin

theorem putnam_1980_b1:
  fixes c :: real
  shows "(\<forall> x :: real. (exp x + exp (-x)) / 2 \<le> exp (c * x ^ 2)) \<longleftrightarrow> c \<in> ( {c :: real. c \<ge> 1 / 2} )"
  sorry

end