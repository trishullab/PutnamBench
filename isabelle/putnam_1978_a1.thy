theory putnam_1978_a1 imports Complex_Main
begin

theorem putnam_1978_a1:
  fixes S T :: "nat set"
  defines "S \<equiv> {k :: nat. \<exists> j :: nat \<le> 33. k = 3 * j + 1}"
  assumes hT : "T \<subset> S \<and> card T = 20"
  shows "\<exists> m \<in> T. \<exists> n \<in> T. m \<noteq> n \<and> m + n = 104"
  sorry

end