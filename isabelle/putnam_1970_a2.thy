theory putnam_1970_a2 imports Complex_Main
begin

theorem putnam_1970_a2:
  fixes A B C D E F G :: "real"
  assumes hle : "B^2 - 4*A*C < 0"
  shows "\<exists> \<delta> > 0. \<not> (\<exists> x y :: real. x^2 + y^2 \<noteq> 0 \<and> x^2 + y^2 < \<delta>^2 \<and>
    A*x^2 + B*x*y + C*y^2 + D*x^3 + E*x^2*y+ F*x*y^2 + G*y^3 = 0)"
  sorry

end