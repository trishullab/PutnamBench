theory putnam_2014_a3 imports Complex_Main
begin

definition putnam_2014_a3_solution :: real where "putnam_2014_a3_solution \<equiv> undefined"
(* 3/7 *)
theorem putnam_2014_a3:
  fixes a :: "nat \<Rightarrow> real"
  assumes a0: "a 0 = 5/2"
  and ak: "\<forall>k::nat\<ge>1. a k = (a (k-1))^2 - 2"
  shows "filterlim (\<lambda>n::nat. (\<Prod>k::nat=0..(n-1). (1 - 1/(a k)))) (nhds putnam_2014_a3_solution) at_top"
  sorry

end
