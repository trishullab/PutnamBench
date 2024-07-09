theory putnam_2014_a4 imports
Complex_Main
begin

definition putnam_2014_a4_solution :: real  where "putnam_2014_a4_solution \<equiv> undefined"
(* 1 / 3 *)
theorem putnam_2014_a4:
  fixes Xrandvar :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and E :: "(nat \<Rightarrow> real) \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> real"
  defines "Xrandvar \<equiv> \<lambda> X :: nat \<Rightarrow> real. \<forall> n :: nat. X n \<in> {0 .. 1} \<and> (\<Sum> n :: nat. X n) = 1"
  and "E \<equiv> \<lambda> (X :: nat \<Rightarrow> real) (f :: nat \<Rightarrow> real). \<Sum> n :: nat. f n * X n"
  shows "(LEAST X0 :: real. \<exists> X :: nat \<Rightarrow> real. Xrandvar X \<and> E X (\<lambda> x :: nat. x) = 1 \<and> E X (\<lambda> x :: nat. x ^ 2) = 2 \<and> E X (\<lambda> x :: nat. x ^ 3) = 5 \<and> X0 = X 0) = putnam_2014_a4_solution"
  sorry

end