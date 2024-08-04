theory putnam_1970_b2 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1970_b2:
  fixes T :: "real"
    and H :: "real poly"
  assumes hT : "T > 0"
    and hH : "degree H \<le> 3"
  shows "(poly H (-T/sqrt 3) + poly H (T/sqrt 3))/2 = 1/(2*T) * (interval_lebesgue_integral lebesgue (-T) T (poly H))"
  sorry

end