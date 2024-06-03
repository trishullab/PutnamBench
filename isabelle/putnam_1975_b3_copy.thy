theory putnam_1975_b3 imports Complex_Main
begin

theorem putnam_1975_b3:
  fixes esymm::"nat \<Rightarrow> (real list) \<Rightarrow> real" and f::"nat \<Rightarrow> (real list) \<Rightarrow> real" and areq::"nat \<Rightarrow> (real list) \<Rightarrow> bool"
  defines "esymm \<equiv> \<lambda>k. \<lambda>a. \<Sum>s \<in> { S::nat set. card S = k \<and> (\<forall>i \<in> S. i < length a) }. (\<Prod>i \<in> s. a!i)"
    and "f \<equiv> \<lambda>k. \<lambda>a. (esymm k a) / (esymm 1 a)^k"
    and "areq \<equiv> \<lambda>k. \<lambda>a. (\<forall>i \<in> {0..<length a}. a!i > 0) \<and> length a \<ge> k"
  shows "\<forall>k::nat. \<forall>a::real list. k > 0 \<longrightarrow> areq k a \<longrightarrow> (f k a \<le> ( \<lambda>k. 1 / (fact k) ) k \<and>
    (\<forall>M::real. M < ( \<lambda>k. 1 / (fact k) ) k \<longrightarrow> (\<exists>a::real list. areq k a \<and> f k a > M)))"
  sorry

end