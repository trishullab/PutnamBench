theory putnam_1966_b5 imports Complex_Main
"HOL-Analysis.Linear_Algebra"
"HOL-Analysis.Line_Segment"
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1966_b5:
  fixes S :: "(real^2) set"
  assumes hSfin : "finite S"
    and hcard : "card S \<ge> 3"
    and hS : "\<forall> s \<subseteq> S. (card s = 3 \<longrightarrow> (\<not>collinear s))"
  shows "\<exists> L :: nat \<Rightarrow> real^2. (\<forall> p \<in> S. \<exists>! i :: nat. i < card S \<and> p = L i)
    \<and> (\<forall> i \<in> {0::nat..<card S}. \<forall> j \<in> {0::nat..<card S}. i \<noteq> j \<longrightarrow> (\<forall> I :: real^2.
    (I \<in> closed_segment (L i) (L ((i + 1) mod (card S))) \<and> I \<in> closed_segment (L j) (L ((j+1) mod (card S)))))
    \<longrightarrow> I = L i \<or> I = L ((i + 1) mod (card S)) \<or> I = L j \<or> I = L ((j+1) mod (card S)))"
  sorry

end