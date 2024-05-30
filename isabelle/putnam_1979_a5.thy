theory putnam_1979_a5 imports
Complex_Main
begin

theorem putnam_1979_a5:
  fixes S :: "real \<Rightarrow> nat \<Rightarrow> int"
  and P :: "real \<Rightarrow> bool"
  defines "S \<equiv> \<lambda> (x :: real) (n :: nat). floor (n * x)"
  and "P \<equiv> \<lambda> x :: real. x ^ 3 - 10 * x ^ 2 + 29 * x - 25 = 0"
  shows "\<exists> \<alpha> \<beta> :: real. \<alpha> \<noteq> \<beta> \<and> P \<alpha> \<and> P \<beta> \<and> (\<forall> n :: nat. \<exists> m :: int. m > n \<and> (\<exists> c d :: nat. S \<alpha> c = m \<and> S \<beta> d = m))"
  sorry

end