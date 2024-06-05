theory putnam_1967_a1 imports Complex_Main
begin

(* uses (nat \<Rightarrow> real) instead of ({1..n} \<Rightarrow> real) *)
theorem putnam_1967_a1:
  fixes n :: nat
  and a :: "nat \<Rightarrow> real"
  and f :: "real \<Rightarrow> real"
  defines "f \<equiv> (\<lambda>x::real. (\<Sum>i::nat=1..n. a i * sin (i*x)))"
  assumes npos: "n > 0"
  and flesin: "\<forall>x::real. \<bar>f x\<bar> \<le> \<bar>sin x\<bar>"
  shows "\<bar>\<Sum>i::nat=1..n. i * a i\<bar> \<le> 1"
  sorry

end
