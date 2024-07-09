theory putnam_1962_a6 imports Complex_Main
begin

theorem putnam_1962_a6:
  fixes S :: "rat set"
  assumes hSadd : "\<forall> a \<in> S. \<forall> b \<in> S. a + b \<in> S"
    and hSprod : "\<forall> a \<in> S. \<forall> b \<in> S. a * b \<in> S"
    and hScond : "\<forall> r :: rat. (r \<in> S \<or> -r \<in> S \<or> r = 0) \<and> \<not>(r \<in> S \<and> -r \<in> S) \<and> \<not>(r \<in> S \<and> r = 0) \<and> \<not>(-r \<in> S \<and> r = 0)"
  shows "S = {r :: rat. r > 0}"
  sorry

end