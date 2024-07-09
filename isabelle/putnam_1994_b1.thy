theory putnam_1994_b1 imports Complex_Main
begin

definition putnam_1994_b1_solution :: "nat set" where "putnam_1994_b1_solution \<equiv> undefined"
(* {n::nat. (315 \<le> n \<and> n \<le> 325) \<or> (332 \<le> n \<and> n \<le> 350)} *)
theorem putnam_1994_b1:
  fixes n :: nat
  and nwithin :: bool
  assumes hnwithin: "nwithin \<equiv> (card {m::nat. \<bar>n - m^2\<bar> \<le> 250} = 15)"
  shows "(n > 0 \<and> nwithin) \<longleftrightarrow> n \<in> putnam_1994_b1_solution"
  sorry

end
