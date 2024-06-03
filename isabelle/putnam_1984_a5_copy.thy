theory putnam_1984_a5 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Set_Integral"
begin

theorem putnam_1984_a5:
  fixes R :: "(real \<times> real \<times> real) set"
    and w :: "(real \<times> real \<times> real) \<Rightarrow> real"
  defines "R \<equiv> {(x :: real, y :: real, z :: real). x \<ge> 0 \<and> y \<ge> 0 \<and> z \<ge> 0 \<and> x + y + z \<le> 1}"
    and "w \<equiv> \<lambda> (x :: real, y :: real, z :: real). 1 - x - y - z"
  shows "let (a, b, c, d, n) = ( (1, 9, 8, 4, 25) ) in a > 0 \<and> b > 0 \<and> c > 0 \<and> d > 0 \<and> n > 0 \<and> 
set_lebesgue_integral lebesgue R (\<lambda> (x, y, z). x^1 * y^9 * z^8 * (w (x, y, z))^4) = (real_of_nat ((fact a) * (fact b) * (fact c) * (fact d)))/(fact n)"
  sorry

end