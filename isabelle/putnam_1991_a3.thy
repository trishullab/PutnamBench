theory putnam_1991_a3 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1991_a3_solution :: "real poly set" where "putnam_1991_a3_solution \<equiv> undefined"
(* {p :: real poly. degree p = 2 \<and> (\<exists> r1 r2 :: real. r1 \<noteq> r2 \<and> poly p r1 = 0 \<and> poly p r2 = 0)} *)
theorem putnam_1991_a3:
  fixes p :: "real poly"
    and n :: nat
  defines "n \<equiv> degree p"
  assumes hge : "n \<ge> 2"
  shows "(\<exists> r :: nat \<Rightarrow> real. (\<forall> i \<in> {1 .. n - 1}. r i < r (i + 1)) \<and> (\<forall> i \<in> {1 .. n}. poly p (r i) = 0) \<and> (\<forall> i \<in> {1 .. n - 1}. poly (pderiv p) ((r i + r (i + 1)) / 2) = 0)) \<longleftrightarrow> p \<in> putnam_1991_a3_solution"
  sorry

end