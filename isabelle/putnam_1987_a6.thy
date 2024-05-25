theory putnam_1987_a6 imports Complex_Main
begin

definition putnam_1987_a6_solution::"real set" where "putnam_1987_a6_solution \<equiv> undefined"
(*  { x. x > 0 \<and> x < 25 } *)
fun digits_b3::"nat \<Rightarrow> nat list" where
  "digits_b3 n = (if n < 3 then [n] else ([n mod 3::nat] @ digits_b3 (n div 3::nat)))"
theorem putnam_1987_a6:
  fixes a::"nat\<Rightarrow>nat"
  defines "a \<equiv> \<lambda>n. card {i::nat. i < length (digits_b3 n) \<and> (digits_b3 n)!i = 0}"
  shows "putnam_1987_a6_solution = {x::real. x > 0 \<and> summable (\<lambda>n. x^(a n) / n^3)}"
  sorry

end