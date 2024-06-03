theory putnam_1990_b4 imports Complex_Main "HOL-Algebra.Multiplicative_Group" 
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_1990_b4:
  fixes G (structure) and n::nat and a b::"'a"
  assumes hG : "Group.group G \<and> finite (carrier G) \<and> card (carrier G) = n"
    and abgen : "generate G {a, b} = carrier G \<and> a \<noteq> b"
  shows "(\<exists>g::nat\<Rightarrow>'a. (\<forall>x \<in> carrier G. card {i::nat. i < 2 * n \<and> g i = x} = 2) \<and>
    (\<forall>i \<in> {0..<(2*n)}. (g ((i+1) mod (2*n)) = g i \<otimes> a) \<or> (g ((i+1) mod (2*n)) = g i \<otimes> b))) \<longleftrightarrow> ( True )"
  sorry

end