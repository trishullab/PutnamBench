theory putnam_2004_b2 imports Complex_Main
begin

theorem putnam_2004_b2:
  fixes m n::nat
  assumes mnpos : "m > 0 \<and> n > 0"
  shows "fact (m+n) / (m+n)^(m+n) < (fact m / m^m) * (fact n / n^n)"
  sorry

end
