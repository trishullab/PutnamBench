theory putnam_1963_b6 imports Complex_Main "HOL-Analysis.Finite_Cartesian_Product" "HOL-Analysis.Line_Segment"
begin

theorem putnam_1963_b6:
  fixes S::"((real^'a) set) \<Rightarrow> ((real^'a) set)" and A::"nat\<Rightarrow>((real^'a) set)"
  defines "S \<equiv> \<lambda>A.  (\<Union> p \<in> A. (\<Union> q \<in> A. closed_segment p q))"
  assumes hdim : "1 \<le> CARD('a) \<and> CARD('a) \<le> 3"
    and hA0 : "card (A 0) > 0"
    and hAn : "\<forall>n \<ge> 1. A n = S (A (n-1))"
  shows "\<forall>n \<ge> 2. A n = A (n+1)"
  sorry

end