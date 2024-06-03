theory putnam_1991_a3 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1991_a3:
  fixes p :: "real poly"
  and n :: nat
  and pr :: bool
  defines "n \<equiv> degree p"
  and "pr \<equiv> \<exists> r :: nat \<Rightarrow> real. (\<forall> i \<in> {1 .. n - 1}. r i < r (i + 1)) \<and> (\<forall> i \<in> {1 .. n}. poly p (r i) = 0) \<and> (\<forall> i \<in> {1 .. n - 1}. poly (pderiv p) ((r i + r (i + 1)) / 2) = 0)"
  shows "(n \<ge> 2 \<and> pr) \<longleftrightarrow> p \<in> ( {p :: real poly. degree p = 2 \<and> (\<exists> r1 r2 :: real. r1 \<noteq> r2 \<and> poly p r1 = 0 \<and> poly p r2 = 0)} )" 
  sorry

end