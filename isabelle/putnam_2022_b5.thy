theory putnam_2022_b5 imports
Complex_Main
begin

definition putnam_2022_b5_solution :: "real set" where "putnam_2022_b5_solution \<equiv> undefined"
(* {0 .. 1 / 4} *)
theorem putnam_2022_b5:
  fixes p :: real
  and Xset :: "nat \<Rightarrow> int list set"
  and Xprob :: "nat \<Rightarrow> int list \<Rightarrow> real"
  and P :: "nat \<Rightarrow> int \<Rightarrow> int list \<Rightarrow> real"
  assumes hXset: "\<forall> n > 0. Xset n = {X :: int list. length X = n \<and> (\<forall> i < n. X!i = 1 \<or> X!i = -1 \<or> X!i = 0)}"
  and hXprob: "\<forall> n > 0. \<forall> X :: int list. length X = n \<longrightarrow> (Xprob n X = (\<Prod> i = 0 ..< n. if (X!i = 1 \<or> X!i = -1) then p else (1 - 2 * p)))"
  and hP: "\<forall> n > 0. \<forall> (b :: int) (a :: int list). length a = n \<longrightarrow> P n b a = (\<Sum> X \<in> {X' \<in> Xset n. (\<Sum> i = 0 ..< n. a!i * X'!i) = b}. Xprob n X)"
  shows "(0 \<le> p \<and> p \<le> 1 / 2 \<and> (\<forall> n > 0. \<forall> (b :: int) (a :: int list). length a = n \<longrightarrow> P n 0 a \<ge> P n b a)) \<longleftrightarrow> p \<in> putnam_2022_b5_solution"
  sorry

end