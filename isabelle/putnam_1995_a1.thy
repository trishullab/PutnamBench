theory putnam_1995_a1 imports Complex_Main
begin

theorem putnam_1995_a1:
  fixes S :: "real set"
  and T U :: "real set"
  assumes hS: "\<forall>a\<in>S. \<forall>b\<in>S. a * b \<in> S"
  and hsub: "T \<subseteq> S \<and> U \<subseteq> S"
  and hunion: "T \<union> U = S"
  and hdisj: "T \<inter> U = {}"
  and hT3: "\<forall>a\<in>T. \<forall>b\<in>T. \<forall>c\<in>T. a * b * c \<in> T"
  and hU3: "\<forall>a\<in>U. \<forall>b\<in>U. \<forall>c\<in>U. a * b * c \<in> U"
  shows "(\<forall>a\<in>T. \<forall>b\<in>T. a * b \<in> T) \<or> (\<forall>a\<in>U. \<forall>b\<in>U. a * b \<in> U)"
  sorry

end
