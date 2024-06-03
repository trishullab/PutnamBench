theory putnam_1999_b3 imports
Complex_Main
begin

theorem putnam_1999_b3:
  fixes A :: "(real \<times> real) set"
  and S :: "real \<Rightarrow> real \<Rightarrow> real"
  defines "A \<equiv> {xy :: real \<times> real. 0 \<le> (fst xy) \<and> (fst xy) < 1 \<and> 0 \<le> (snd xy) \<and> (snd xy) < 1}"
  and "S \<equiv> \<lambda> x y. \<Sum> m :: nat. \<Sum> n :: nat. (if (m > 0 \<and> n > 0 \<and> 1 / 2 \<le> m / n \<and> m / n \<le> 2) then x ^ m * y ^ n else 0)"
  shows "filterlim (\<lambda> xy :: real \<times> real. (1 - (fst xy) * (snd xy) ^ 2) * (1 - (fst xy) ^ 2 * (snd xy)) * (S (fst xy) (snd xy))) (nhds ( 3 )) (at (1, 1) within A)"
  sorry

end