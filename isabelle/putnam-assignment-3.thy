theory putnam_prep_3 imports Complex_Main "HOL-Computational_Algebra.Polynomial" "HOL-Analysis.Analysis" "HOL-Algebra.Algebra"
begin

theorem putnam_2014_A5:
  fixes pf :: "nat \<Rightarrow> real poly" and j k :: nat
  assumes hdeg : "\<forall>n. degree (pf n) = n - 1"
    and hpf : "\<forall>n. \<forall>p<n. coeff (pf n) p = p + 1"
    and hjk : "j \<noteq> k"
    and jpos : "j > 0" and kpos : "k > 0"
  shows "\<exists> a b:: real poly. a * (pf j) + b * (pf k) = 1"
  sorry

theorem putnam_1999_A2:
  fixes p :: "real poly"
  assumes hpos : "\<forall>x. poly p x \<ge> 0"
  shows "\<exists>S :: real poly set . \<forall>x. finite S \<and> poly p x = (\<Sum>s \<in> S. (poly s x)^2)"
  sorry


definition putnam_2001_B4_solution::bool where "putnam_2001_B4_solution \<equiv> undefined"
theorem putnam_2001_B4:
  fixes f :: "rat \<Rightarrow> rat" and S :: "rat set"
  defines "f \<equiv> \<lambda>x. x - 1/x"
    and "S \<equiv> \<rat> - {-1, 0, 1}"
  shows "putnam_2001_B4_solution = 
    ((\<Inter>n \<in> {1..}. image (f^^n) S) = {}) "
  sorry

theorem putnam_2010_A5:
  fixes S :: "(real^3) monoid"
  assumes hgroup : "Group.group S"
    and hcross: "\<forall>a \<in> carrier S. \<forall>b \<in> carrier S. cross3 a b = a \<otimes>\<index> b \<or> cross3 a b = 0"
  shows "\<forall>a \<in> carrier S. \<forall>b \<in> carrier S. cross3 a b = 0"
  sorry

end