theory putnam_2010_a1 imports Complex_Main

begin

(* Boosted domains to naturals *)
definition putnam_2010_a1_solution :: "nat\<Rightarrow>nat" where 
"putnam_2010_a1_solution \<equiv> undefined"
(* \<lambda>n. nat \<lceil>n/2\<rceil> *)
theorem putnam_2010_a1:
  fixes n :: "nat" and kboxes :: "nat\<Rightarrow>bool"
  assumes hpos : "n > 0"
    and hkboxes : "\<forall> k::nat. kboxes k = (\<exists> boxes :: nat\<Rightarrow>nat. (\<forall>m\<in>{1..n}. boxes m \<in> {1..k}) \<and> (\<forall>i\<in>{1..k}. \<forall>j\<in>{1..k}. (\<Sum>x\<in>{1..n}. (if (boxes x = i) then x else 0)) = (\<Sum>x\<in>{1..n}. (if (boxes x = j) then x else 0))))"
  shows "(GREATEST k. kboxes k) = putnam_2010_a1_solution n"
  sorry

end