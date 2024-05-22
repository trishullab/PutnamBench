theory putnam_2005_a4 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2005_a4:
  fixes n :: nat
  and H :: "real^'n^'n"
  and a b :: nat
  and S :: "real^'b^'a"
  assumes npos: "n \<ge> 1"
  and ncard: "CARD('n) = n"
  and Hentries: "\<forall>i j::'n. H$i$j = 1 \<or> H$i$j = -1"
  and Hortho: "\<forall>i j::'n. (i \<noteq> j \<longrightarrow> orthogonal (row i H) (row j H))"
  and hab: "1 \<le> a \<and> a \<le> n \<and> 1 \<le> b \<and> b \<le> n"
  and abcard: "CARD('a) = a \<and> CARD('b) = b"
  and Ssub: "\<exists>(rri::'a\<Rightarrow>'n)(cri::'b\<Rightarrow>'n). inj rri \<and> inj cri \<and> (\<forall>(i::'a)(j::'b). S$i$j = H$(rri i)$(cri j))"
  and Sentries: "\<forall>(i::'a)(j::'b). S$i$j = 1"
  shows "a*b \<le> n"
  sorry

end
