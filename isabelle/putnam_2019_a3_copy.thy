theory putnam_2019_a3 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2019_a3:
  fixes proots :: "(complex poly) \<Rightarrow> (complex multiset)"
  and v :: "(complex poly) \<Rightarrow> bool"
  and \<mu> :: "(complex poly) \<Rightarrow> real"
  defines "proots \<equiv> (\<lambda>p::complex poly. Abs_multiset (\<lambda>a::complex. order a p))"
  defines "v \<equiv> (\<lambda>b::complex poly. degree b = 2019 \<and> 1 \<le> Re (coeff b 0) \<and> Re (coeff b 2019) \<le> 2019 \<and>
  (\<forall>i::nat\<in>{0..2019}. Im (coeff b i) = 0) \<and> (\<forall>i::nat\<in>{0..2018}. Re (coeff b i) < Re (coeff b (i + 1))))"
  and "\<mu> \<equiv> (\<lambda>b::complex poly. (\<Sum>\<^sub># (image_mset norm (proots b))) / 2019)"
  shows "(GREATEST M::real. (\<forall>b::complex poly. (v b \<longrightarrow> \<mu> b \<ge> M))) = ( 2019 powr (-1/2019) )"
  sorry

end
