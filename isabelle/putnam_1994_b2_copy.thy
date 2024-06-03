theory putnam_1994_b2 imports Complex_Main
begin

theorem putnam_1994_b2:
  fixes c :: real
  and inter :: bool
  assumes hinter: "inter \<equiv> (\<exists>m b::real. card {x::real. m*x + b = x^4 + 9*x^3 + c*x^2 + 9*x + 4} = 4)"
  shows "inter \<longleftrightarrow> c \<in> ( {c::real. c < 243/8} )"
  sorry

end
