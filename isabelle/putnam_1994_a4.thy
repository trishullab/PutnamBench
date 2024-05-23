theory putnam_1994_a4 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1994_a4:
  fixes A B :: "int^2^2"
  assumes ABinv: "invertible A \<and> invertible (A + B) \<and> invertible (A + 2*B) \<and> invertible (A + 3*B) \<and> invertible (A + 4*B)"
  shows "invertible (A + 5*B)"
  sorry

end
