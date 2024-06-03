theory putnam_2023_b4 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* uses (nat \<Rightarrow> real) instead of (Fin (n+1) \<Rightarrow> real) and (real \<Rightarrow> real) instead of ({(ts 0)..} \<Rightarrow> real) *)
theorem putnam_2023_b4:
  fixes tne :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> real set"
  and fdiff :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and flim :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fderiv1 :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fderiv2 :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fall :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and tinc :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
  and Tall :: "real \<Rightarrow> bool"
  assumes htne: "\<forall>(n::nat)(ts::nat\<Rightarrow>real). tne n ts = {t::real. t > ts 0 \<and> (\<forall>i::nat\<in>{1..n}. t \<noteq> ts i)}"
  and hfdiff: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fdiff n ts f = (continuous_on {(ts 0)..} f \<and> f C1_differentiable_on (tne n ts) \<and> (deriv f) differentiable_on (tne n ts))"
  and hflim: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). flim n ts f = (\<forall>k::nat\<in>{0..n}. filterlim (deriv f) (nhds 0) (at_right (ts k)))"
  and hfderiv1: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fderiv1 n ts f = (\<forall>k::nat\<in>{0..(n-1)}. \<forall>t::real\<in>{(ts k)<..<(ts (k+1))}. (deriv^^2) f t = k+1)"
  and hfderiv2: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fderiv2 n ts f = (\<forall>t::real>(ts n). (deriv^^2) f t = n+1)"
  and hfall: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fall n ts f = (fdiff n ts f \<and> f (ts 0) = 0.5 \<and> flim n ts f \<and> fderiv1 n ts f \<and> fderiv2 n ts f)"
  and htinc: "\<forall>(n::nat)(ts::nat\<Rightarrow>real). tinc n ts = (\<forall>k::nat\<in>{0..(n-1)}. ts (k+1) \<ge> ts k + 1)"
  and hTall: "\<forall>T::real. Tall T = (T \<ge> 0 \<and> (\<exists>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). tinc n ts \<and> fall n ts f \<and> f (ts 0 + T) = 2023))"
  shows "(LEAST T::real. Tall T) = ( 29 )"
  sorry

end
