theory putnam_1987_b3 imports Complex_Main
"HOL-Algebra.Ring"
begin

theorem putnam_1987_b3:
  fixes F :: "'f :: field"
  assumes hF : "(1 :: 'f) + 1 \<noteq> 0"
  shows "{(x :: 'f, y :: 'f). x^2 + y^2 = 1} = {(1, 0)} \<union> {s :: 'f \<times> 'f. \<exists> r \<in> {r' :: 'f. r' ^ 2 \<noteq> -1}. s = ((r ^ 2 - 1) / (r ^ 2 + 1), (2 * r) / (r ^ 2 + 1))}"
  sorry

end