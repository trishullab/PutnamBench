theory putnam_2008_b4 imports
Complex_Main
"HOL-Computational_Algebra.Primes"
"HOL-Computational_Algebra.Polynomial"
"HOL-Number_Theory.Cong"
begin

theorem putnam_2008_b4:
  fixes p :: nat
  and h :: "int poly"
  assumes hp: "prime p"
  and hh: "\<forall> i \<in> {0 .. p ^ 2 - 1}. \<forall> j \<in> {0 .. p ^ 2 - 1}. [poly h i = poly h j] (mod p ^ 2) \<longrightarrow> i = j"
  shows "\<forall> i \<in> {0 .. p ^ 3 - 1}. \<forall> j \<in> {0 .. p ^ 3 - 1}. [poly h i = poly h j] (mod p ^ 3) \<longrightarrow> i = j"
  sorry

end