theory putnam_2012_a3 imports Complex_Main
begin

(* uses (real \<Rightarrow> real) instead of ({-1..1} \<Rightarrow> real) *)
theorem putnam_2012_a3:
  fixes S :: "real set"
  and hf :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "S \<equiv> {-1..1}"
  and "hf \<equiv> (\<lambda>f::real\<Rightarrow>real. continuous_on S f \<and>
  (\<forall>x\<in>S. f x = ((2 - x^2)/2)*f (x^2/(2 - x^2))) \<and> f 0 = 1 \<and>
  (\<exists>y::real. filterlim (\<lambda>x::real. (f x)/sqrt (1 - x)) (nhds y) (at_left 1)))"
  shows "hf ( (\<lambda>x::real. sqrt (1 - x^2)) ) \<and> (\<forall>f::real\<Rightarrow>real. hf f \<longrightarrow> (\<forall>x\<in>S. f x = ( (\<lambda>x::real. sqrt (1 - x^2)) ) x))"
  sorry

end
