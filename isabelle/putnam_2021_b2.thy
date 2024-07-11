theory putnam_2021_b2 imports Complex_Main
begin

definition putnam_2021_b2_solution :: real where "putnam_2021_b2_solution \<equiv> undefined"
(* 2/3 *)
theorem putnam_2021_b2:   
  fixes S :: "(nat \<Rightarrow> real) \<Rightarrow> real"   and asum :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "S \<equiv> \<lambda>a. (\<Sum>n::nat. ((n+1)/2^(n+1)) * (\<Prod>k::nat=0..n. a k) powr (1/(n+1)))"   
    and "asum \<equiv> \<lambda>a. (\<forall>k::nat. a k \<ge> 0) \<and> (\<Sum>k::nat. a k) = 1"   
  shows "(GREATEST Sa::real. (\<exists>a::nat\<Rightarrow>real. asum a \<and> S a = Sa)) = putnam_2021_b2_solution"
  sorry

end
