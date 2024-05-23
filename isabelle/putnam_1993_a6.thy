theory putnam_1993_a6 imports Complex_Main
begin

theorem putnam_1993_a6:
  fixes seq::"nat\<Rightarrow>nat"
  assumes hseq23 : "\<forall>n::nat. seq n = 2 \<or> seq n = 3"
    and hseq2inds : "\<forall>n::nat. (seq n = 2 \<longleftrightarrow> (\<exists>N::nat. n = (\<Sum>i=0..<N. (seq i + 1))))"
  shows "\<exists>r::real. \<forall>n::nat. (seq n = 2 \<longleftrightarrow> (\<exists>m::nat. n+1 = 1+\<lfloor>r * m\<rfloor>))"
  sorry

end