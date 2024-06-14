theory putnam_1967_b2 imports Complex_Main
begin

theorem putnam_1967_b2:
  fixes p r :: real
  and A B C \<alpha> \<beta> \<gamma> :: real
  assumes prbound: "0 \<le> p \<and> p \<le> 1 \<and> 0 \<le> r \<and> r \<le> 1"
  and id1: "\<forall>x y::real. (p*x + (1-p)*y)^2 = A*x^2 + B*x*y + C*y^2"
  and id2: "\<forall>x y::real. (p*x + (1-p)*y) * (r*x + (1-r)*y) = \<alpha>*x^2 + \<beta>*x*y + \<gamma>*y^2"
  shows "max (max A B) C \<ge> 4/9 \<and> max (max \<alpha> \<beta>) \<gamma> \<ge> 4/9"
  sorry

end
