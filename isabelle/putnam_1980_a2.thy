theory putnam_1980_a2 imports
Complex_Main
begin

definition putnam_1980_a2_solution :: "nat \<Rightarrow> nat \<Rightarrow> nat" where "putnam_1980_a2_solution \<equiv> undefined"
(* \<lambda> r s :: nat. (1 + 4 * r + 6 * r ^ 2) * (1 + 4 * s + 6 * s ^ 2) *)
theorem putnam_1980_a2:
  fixes r s :: nat
  and abcdlcm :: "nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> bool"
  defines "abcdlcm \<equiv> \<lambda> a b c d :: nat. a > 0 \<and> b > 0 \<and> c > 0 \<and> d > 0 \<and> 3 ^ r * 7 ^ s = lcm (lcm a b) c \<and> 3 ^ r * 7 ^ s = lcm (lcm a b) d \<and> 3 ^ r * 7 ^ s = lcm (lcm a c) d \<and> 3 ^ r * 7 ^ s = lcm (lcm b c) d" 
  assumes rspos: "r > 0 \<and> s > 0"
  shows "card {(a, b, c, d). abcdlcm a b c d} = putnam_1980_a2_solution r s"
  sorry

end