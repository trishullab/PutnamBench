theory putnam_2006_b6 imports Complex_Main
begin

definition putnam_2006_b6_solution :: "nat \<Rightarrow> real" where "putnam_2006_b6_solution \<equiv> undefined"
(* (\<lambda>k::nat. ((k+1)/k) ^ k) *)
theorem putnam_2006_b6:
  fixes k :: nat
  and a :: "nat \<Rightarrow> real"
  assumes hk: "k > 1"
  and ha0: "a 0 > 0"
  and ha: "\<forall>n::nat. a (n+1) = a n + 1 / ((a n) powr (1/k))"
  shows "filterlim (\<lambda>n::nat. (a n)^(k+1) / (n^k)) (nhds (putnam_2006_b6_solution k)) at_top"
  sorry

end
