theory putnam_1982_a2 imports Complex_Main

begin

definition putnam_1982_a2_solution :: "bool" where
"putnam_1982_a2_solution \<equiv> undefined"
(* True *)
theorem putnam_1982_a2:
  fixes B :: "nat \<Rightarrow> real \<Rightarrow> real"
    and f :: "nat \<Rightarrow> real"
  defines "B \<equiv> \<lambda> (n :: nat) (x :: real). (\<Sum> k \<in> {1 :: nat..n}. (real k) powr x)"
    and "f \<equiv> \<lambda> n :: nat. (B n (log n 2)) / ((n * (log 2 n)) ^ 2)"
  shows "putnam_1982_a2_solution \<longleftrightarrow> (\<exists> L :: real. filterlim (\<lambda> N :: nat. (\<Sum> j \<in> {2..N}. f j)) (nhds L) at_top)" 
  sorry

end