theory putnam_1982_a5 imports Complex_Main

begin

theorem putnam_1982_a5:
  fixes a b c d :: "nat"
  assumes hpos : "a > 0 \<and> b > 0 \<and> c > 0 \<and> d > 0"
    and hac : "a + c \<le> 1982"
    and hfrac : "(real a) / b + (real c) / d < 1"
  shows "(1 - (real a)/b - (real c)/d) > 1 / 1983^3"
  sorry

end