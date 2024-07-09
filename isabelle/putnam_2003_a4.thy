theory putnam_2003_a4 imports Complex_Main
begin

theorem putnam_2003_a4:
  fixes a b c A B C::real
  assumes aAne0 : "a \<noteq> 0 \<and> A \<noteq> 0"
    and hle : "\<forall>x::real. abs(a * x^2 + b * x + c) \<le> abs(A * x^2 + B * x + C)"
  shows "abs(b^2 - 4 * a * c) \<le> abs(B^2 - 4 * A * C)"
  sorry

end