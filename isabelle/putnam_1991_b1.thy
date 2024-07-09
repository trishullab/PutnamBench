theory putnam_1991_b1 imports
Complex_Main
begin

definition putnam_1991_b1_solution :: "nat set" where "putnam_1991_b1_solution \<equiv> undefined"
(* {A :: nat. \<exists> x > 0. A = x ^ 2} *)
theorem putnam_1991_b1:
  fixes m :: "nat \<Rightarrow> nat"
  and S :: "nat \<Rightarrow> nat"
  and A :: nat
  and a :: "nat \<Rightarrow> nat"
  defines "m \<equiv> \<lambda> n. GREATEST M :: nat. M ^ 2 \<le> n"
  and "S \<equiv> \<lambda> n. n - (m n) ^ 2"
  assumes ha: "a 0 = A \<and> (\<forall> k :: nat. a (k + 1) = a k + S (a k))"
  shows "(A > 0 \<and> (\<exists> K c :: nat. \<forall> k \<ge> K. a k = c)) \<longleftrightarrow> A \<in> putnam_1991_b1_solution"
  sorry

end