theory putnam_2010_a5 imports Complex_Main
"HOL-Analysis.Cross3"
"HOL-Algebra.Group"
begin

theorem putnam_2010_a5:
  fixes S :: "(real^3) monoid"
  assumes hgroup : "Group.group S"
    and hcross: "\<forall>a \<in> carrier S. \<forall>b \<in> carrier S. cross3 a b = a \<otimes>\<index> b \<or> cross3 a b = 0"
  shows "\<forall>a \<in> carrier S. \<forall>b \<in> carrier S. cross3 a b = 0"
  sorry

end
