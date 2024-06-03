theory putnam_2013_b1 imports Complex_Main
begin

definition putnam_2013_b1_solution :: int where "putnam_2013_b1_solution \<equiv> undefined"
(* -1 *)
theorem putnam_2013_b1:
  fixes c :: "nat \<Rightarrow> int"
  assumes hc1: "c 1 = 1"
  and hceven: "\<forall>n::nat. n > 0 \<longrightarrow> c (2*n) = c n"
  and hcodd: "\<forall>n::nat. n > 0 \<longrightarrow> c (2*n+1) = (-1)^n * c n"
  shows "(\<Sum>n::nat=1..2013. c n * c (n+2)) = putnam_2013_b1_solution"
  sorry

end
