theory putnam_1990_a5 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1990_a5:
  fixes A B::"real^'a^'a" and n::nat
  assumes matsize : "CARD('a) = n \<and> n \<ge> 1"
    and habab : "A ** B ** A ** B = mat 0"
  shows "(B ** A ** B ** A = mat 0) \<longleftrightarrow> ( False )"
  sorry

end