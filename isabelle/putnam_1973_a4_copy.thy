theory putnam_1973_a4 imports Complex_Main
begin

theorem putnam_1973_a4:
  fixes f :: "real \<Rightarrow> real"
  defines "f \<equiv> (\<lambda>x::real. 2 powr x - 1 - x^2)"
  shows "( 3 ) = card {x::real. (f x = 0)}"
  sorry

end
