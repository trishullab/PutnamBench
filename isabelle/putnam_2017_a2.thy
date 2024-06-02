theory putnam_2017_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2017_a2:
  fixes Q :: "nat \<Rightarrow> real \<Rightarrow> real"
  assumes hQbase: "\<forall>x::real. Q 0 x = 1 \<and> Q 1 x = x"
  and hQn: "\<forall>n::nat>2. \<forall>x::real. Q n x = ((Q (n-1) x)^2 - 1) / Q (n-2) x"
  shows "\<forall>n::nat>0. \<exists>P::real poly. (\<forall>i::nat. coeff P i = round (coeff P i)) \<and> Q n = poly P"
  sorry

end
