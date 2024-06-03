theory putnam_1982_b2 imports Complex_Main "HOL-Computational_Algebra.Polynomial" "HOL-Analysis.Interval_Integral"
begin

theorem putnam_1982_b2:
  fixes A::"real\<Rightarrow>real\<Rightarrow>nat" and g I::real
  defines "A \<equiv> \<lambda>x::real. \<lambda>y::real. card {(m::int, n::int). m^2 + n^2 \<le> x^2 + y^2}"
    and "g \<equiv> \<Sum>n::nat. exp (- (n^2))"
    and "I \<equiv> interval_lebesgue_integral lebesgue MInfty PInfty
       (\<lambda>x. interval_lebesgue_integral lebesgue MInfty PInfty (\<lambda>y. A x y * exp (- (x^2) - y^2)))"
  shows "I = poly ( [: pi :] * [: -1, 2 :] ^2 ) g"
  sorry

end