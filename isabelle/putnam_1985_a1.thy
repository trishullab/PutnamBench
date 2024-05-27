theory putnam_1985_a1 imports Complex_Main
begin

definition putnam_1985_a1_solution::"nat \<times> nat \<times> nat \<times> nat" where "putnam_1985_a1_solution \<equiv> undefined"
(* 10, 10, 0, 0 *)
theorem putnam_1985_a1:
  shows "let (a, b, c, d) = putnam_1985_a1_solution in
    (2^a * 3^b * 5^c * 7^d = card {(A1::nat set, A2::nat set, A3::nat set). (A1\<union>A2\<union>A3 = {1..10::nat} \<and> A1\<inter>A2\<inter>A3 = {}) })"
  sorry

end