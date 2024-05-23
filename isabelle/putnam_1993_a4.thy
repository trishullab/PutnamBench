theory putnam_1993_a4 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_1993_a4:
  fixes x y::"nat\<Rightarrow>nat"
  assumes hx : "\<forall>i \<in> {0..<19}. x i > 0 \<and> x i \<le> 93"
    and hy : "\<forall>j \<in> {0..<93}. y j > 0 \<and> y j \<le> 19"
  shows "\<exists>is js. is \<in> (Pow {0..<19}) \<and> js \<in> (Pow {0..<93}) \<and> is \<noteq> {} \<and> (\<Sum>i \<in> is. x i) = (\<Sum>j \<in> js. y j)"
  sorry

end