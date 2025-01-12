theory putnam_2017_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2017_a2:
  fixes Q :: "nat \<Rightarrow> real poly"
  assumes hQbase: "\<forall>x::real. Q 0 = monom 1 0 \<and> Q 1 = monom 1 1"
  and hQn: "\<forall>n::nat. Q (n + 2) * Q n = (Q (n-1))^2 - 1"
  shows "\<forall>n::nat>0. \<exists>P::int poly. Q n = map_poly real_of_int P"
  sorry

end