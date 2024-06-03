theory putnam_1971_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1971_a2:
  shows "\<forall>P::real poly. ((poly P 0 = 0 \<and> (\<forall>x::real. poly P (x^2 + 1) = (poly P x)^2 + 1)) \<longleftrightarrow> P \<in> ( {monom 1 1} ))"
  sorry

end
