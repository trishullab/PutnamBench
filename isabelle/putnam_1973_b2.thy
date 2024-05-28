theory putnam_1973_b2 imports Complex_Main
begin

theorem putnam_1973_b2:
  fixes z :: complex
  assumes hzrat: "\<exists>q1 q2::rat. Re z = q1 \<and> Im z = q2"
  and hznorm: "norm z = 1"
  shows "\<forall>n::int. (\<exists>q::rat. norm (z powi (2*n) - 1) = q)"
  sorry

end
