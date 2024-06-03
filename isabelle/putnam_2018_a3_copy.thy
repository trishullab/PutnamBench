theory putnam_2018_a3 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2018_a3:
  fixes f :: "(nat\<Rightarrow>real) \<Rightarrow> nat \<Rightarrow> real"
  defines "f \<equiv> \<lambda>x. \<lambda>k. \<Sum>i=0..<10. cos (k * (x i))"
  shows "( 480/49 ) = (GREATEST r. \<exists>x. f x 1 = 0 \<and> r = f x 3)"
  sorry

end
