theory putnam_1977_a1 imports Complex_Main "HOL-Analysis.Linear_Algebra"
begin

theorem putnam_1977_a1:
  fixes f::"real\<Rightarrow>real" and S::"real set"
  defines "f \<equiv> \<lambda>x. 2 * x^4 + 7 * x^3 + 3 * x - 5"
  assumes hS : "card S = 4"
  shows "collinear {(x::real, y::real). x \<in> S \<and> y = f x} \<longrightarrow> (\<Sum>S) / 4 = ( -7/8 )"
  sorry
  

end