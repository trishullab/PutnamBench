theory putnam_1992_b1 imports Complex_Main
begin

definition putnam_1992_b1_solution :: "nat \<Rightarrow> nat" where "putnam_1992_b1_solution \<equiv> undefined"
(* (\<lambda>n::nat. 2*n - 3) *)
theorem putnam_1992_b1:
  fixes n :: nat
  and A :: "real set \<Rightarrow> real set"
  and min :: nat
  assumes nge2: "n \<ge> 2"
  defines "A \<equiv> (\<lambda>S::real set. {x::real. (\<exists>a\<in>S. \<exists>b\<in>S. a \<noteq> b \<and> (a + b) / 2 = x)})"
  and "min \<equiv> LEAST AScard::nat. (\<exists>S::real set. card S = n \<and> AScard = card (A S))"
  shows "min = putnam_1992_b1_solution n"
  sorry

end
