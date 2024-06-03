theory putnam_2014_a5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2014_a5:
  fixes pf :: "nat \<Rightarrow> real poly" and j k :: nat
  assumes hdeg : "\<forall>n. degree (pf n) = n - 1"
    and hpf : "\<forall>n. \<forall>p<n. coeff (pf n) p = p + 1"
    and hjk : "j \<noteq> k"
    and jpos : "j > 0" and kpos : "k > 0"
  shows "\<exists> a b:: real poly. a * (pf j) + b * (pf k) = 1"
  sorry

end
