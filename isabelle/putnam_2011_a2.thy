theory putnam_2011_a2 imports Complex_Main
begin

definition putnam_2011_a2_solution :: real where "putnam_2011_a2_solution \<equiv> undefined"
(* 3/2 *)
theorem putnam_2011_a2:
  fixes a b :: "nat \<Rightarrow> real"
  assumes habn: "\<forall>n::nat. a n > 0 \<and> b n > 0"
  and hab1: "a 0 = 1 \<and> b 0 = 1"
  and hb: "\<forall>n::nat\<ge>1. b n = b (n-1) * a n - 2"
  and hbnd: "\<exists>B::real. \<forall>n::nat. \<bar>b n\<bar> \<le> B"
  shows "filterlim (\<lambda>n::nat. \<Sum>i::nat=0..(n-1). 1 / (\<Prod>j::nat=0..i. a j)) (nhds putnam_2011_a2_solution) at_top"
  sorry

end
