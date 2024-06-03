theory putnam_1994_b1 imports Complex_Main
begin

theorem putnam_1994_b1:
  fixes n :: nat
  and nwithin :: bool
  assumes hnwithin: "nwithin \<equiv> (card {m::nat. \<bar>n - m^2\<bar> \<le> 250} = 15)"
  shows "(n > 0 \<and> nwithin) \<longleftrightarrow> n \<in> ( {n::nat. (315 \<le> n \<and> n \<le> 325) \<or> (332 \<le> n \<and> n \<le> 350)} )"
  sorry

end
