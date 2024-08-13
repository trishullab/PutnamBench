theory putnam_1990_b4 imports Complex_Main "HOL-Algebra.Multiplicative_Group" 
begin

theorem putnam_1990_b4:
  assumes pacard: "\<exists> pamap :: 'a \<Rightarrow> nat. surj pamap"
  shows "(\<forall> (G :: 'a monoid) (n :: nat) (a :: 'a) (b :: 'a). Group.group G \<and> finite (carrier G) \<and> card (carrier G) = n \<and> 
    (generate G {a, b} = carrier G \<and> generate G {a} \<noteq> carrier G \<and> generate G {b} \<noteq> carrier G) \<longrightarrow> 
    (\<exists>g::nat\<Rightarrow>'a. (\<forall>x \<in> carrier G. card {i::nat. i < 2 * n \<and> g i = x} = 2) \<and>
    (\<forall>i \<in> {0..<(2*n)}. (g ((i+1) mod (2*n)) = g i \<otimes>\<^bsub>G\<^esub> a) \<or> (g ((i+1) mod (2*n)) = g i \<otimes>\<^bsub>G\<^esub> b)))) \<longleftrightarrow> putnam_1990_b4_solution"
  sorry

end