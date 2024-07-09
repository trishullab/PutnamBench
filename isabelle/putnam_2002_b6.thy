theory putnam_2002_b6 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Determinants"
"HOL-Number_Theory.Cong"
"HOL-Computational_Algebra.Primes"
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2002_b6:
  fixes p :: nat
  and lincomb :: "int \<times> int \<times> int \<Rightarrow> int poly poly poly"
  and M :: "(int poly poly poly)^3^3"
  and cong :: "nat \<Rightarrow> int poly poly poly \<times> int poly poly poly \<Rightarrow> bool"
  and idx :: "nat \<Rightarrow> 3"
  defines "lincomb \<equiv> \<lambda> (a, b, c). monom (monom (monom a 0) 0) 1 + monom (monom (monom b 0) 1) 0 + monom (monom (monom c 1) 0) 0"
  and "cong \<equiv> \<lambda> p (f, g). \<forall> r s t :: nat. [coeff (coeff (coeff f r) s) t = coeff (coeff (coeff g r) s) t] (mod (int p))"
  assumes idxbij: "\<forall> s :: 3. \<exists>! r \<in> {0..2}. idx r = s"
  and hp: "prime p"
  and hM: "\<forall> r \<in> {0..2}. M$(idx r)$(idx 0) = monom (monom (monom 1 0) 0) (p ^ r) \<and> M$(idx r)$(idx 1) = monom (monom (monom 1 0) (p ^ r)) 0 \<and> M$(idx r)$(idx 2) = monom (monom (monom 1 (p ^ r)) 0) 0"
  shows "\<exists> L :: (int \<times> int \<times> int) list. cong p (det M, foldr (\<lambda> t q. (lincomb t) * q) L 1)"
  sorry

end