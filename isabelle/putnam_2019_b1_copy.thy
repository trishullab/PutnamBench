theory putnam_2019_b1 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_2019_b1:
  fixes n :: nat
  and Pn :: "(int^2) set"
  and pZtoR :: "(int^2) \<Rightarrow> (real^2)"
  and sPnsquare :: "(int^2) set \<Rightarrow> bool"
  defines "Pn \<equiv> {p :: int^2. (p$1 = 0 \<and> p$2 = 0) \<or> (\<exists> k \<le> n. (p$1) ^ 2 + (p$2) ^ 2 = 2 ^ k)}"
  and "pZtoR \<equiv> \<lambda> p. \<chi> i. (real_of_int (p$i))"
  and "sPnsquare \<equiv> \<lambda> sPn :: (int^2) set. \<exists> a b c d :: int^2. sPn = {a, b, c, d} \<and> (\<exists> (s :: real) > 0. dist (pZtoR a) (pZtoR b) = s \<and> dist (pZtoR b) (pZtoR c) = s \<and> dist (pZtoR c) (pZtoR d) = s \<and> dist (pZtoR d) (pZtoR a) = s \<and> dist (pZtoR a) (pZtoR c) = dist (pZtoR b) (pZtoR d))"
  shows "card {sPn :: (int^2) set. sPn \<subseteq> Pn \<and> sPnsquare sPn} = ( \<lambda> n. 5 * n + 1 ) n"
  sorry

end