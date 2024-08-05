theory putnam_1987_b5 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1987_b5:
  fixes n::nat and M::"complex^'a^'b"
  assumes matsize : "CARD('a) = n \<and> CARD('b) = 2 * n"
    and npos : "n > 0"
    and hM : "\<forall>z::(complex^'b^1). (let prod = z ** M in (\<forall>i. prod$i = 0))
       \<longrightarrow> (\<not>(\<forall>i. z$1$i = 0)) \<longrightarrow> (\<exists>i. Im (z$1$i) \<noteq> 0)"
  shows "\<forall>r::(real^1^'b). \<exists>w::(complex^1^'a). \<forall>i. Re ((M**w)$i$1) = r$i$1"
  sorry

end