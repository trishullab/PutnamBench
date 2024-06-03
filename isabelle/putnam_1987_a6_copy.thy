theory putnam_1987_a6 imports Complex_Main
begin

theorem putnam_1987_a6:
  fixes a::"nat\<Rightarrow>nat"
  defines "a \<equiv> \<lambda>n. card {i::nat. i < length (digits_b3 n) \<and> (digits_b3 n)!i = 0}"
  shows "(  { x. x > 0 \<and> x < 25 } ) = {x::real. x > 0 \<and> summable (\<lambda>n. x^(a n) / n^3)}"
  sorry

end