theory putnam_1992_b4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Derivative"
begin

theorem putnam_1992_b4:
  fixes valid :: "(real poly) \<Rightarrow> bool"
  and pair :: "(real poly) \<Rightarrow> (real poly) \<Rightarrow> bool"
  and min :: nat
  defines "valid \<equiv> (\<lambda>p::real poly. p \<noteq> 0 \<and> degree p < 1992 \<and> coprime p (monom 1 3 - monom 1 1))"
  and "pair \<equiv> (\<lambda>p f::real poly. (\<exists>g::real poly. (deriv^^1992) (\<lambda>x::real. poly p x / (x^3 - x)) = (\<lambda>x::real. poly f x / poly g x)))"
  and "min \<equiv> LEAST fdeg::nat. (\<exists>p f::real poly. valid p \<and> pair p f \<and> fdeg = degree f)"
  shows "min = ( 3984 )"
  sorry

end
