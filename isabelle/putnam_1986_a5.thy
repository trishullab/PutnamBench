theory putnam_1986_a5 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Derivative"
begin

theorem putnam_1986_a5:
  fixes n :: "nat"
    and f :: "(real^'n \<Rightarrow> real)^'n"
    and xrepl :: "(real^'n) \<Rightarrow> 'n \<Rightarrow> real \<Rightarrow> real^'n"
    and contdiffx :: "(real^'n \<Rightarrow> real) \<Rightarrow> 'n \<Rightarrow> real^'n \<Rightarrow> bool"
    and partderiv :: "(real^'n \<Rightarrow> real) \<Rightarrow> 'n \<Rightarrow> (real^'n \<Rightarrow> real)"
  defines "xrepl \<equiv> \<lambda> (x :: real^'n) (i :: 'n) (xi :: real). \<chi> j :: 'n. if j = i then xi else x$j"
    and "contdiffx \<equiv> \<lambda> (func :: real^'n \<Rightarrow> real) (i :: 'n) (x :: real^'n). (\<lambda> xi :: real. func (xrepl x i xi)) C1_differentiable_on UNIV"
    and "partderiv \<equiv> \<lambda> (func :: real^'n \<Rightarrow> real) (i :: 'n). \<lambda> x :: real^'n. deriv (\<lambda> xi :: real. func (xrepl x i xi)) (x$i)"
  assumes hcard : "CARD('n) = n"
    and npos : "n \<ge> 1"
    and hfcontdiff1 : "\<forall> i :: 'n. \<forall> j :: 'n. \<forall> x :: real^'n. contdiffx (f$i) j x"
    and hfcontdiff2 : "\<forall> i :: 'n. \<forall> j1 j2 :: 'n. \<forall> x :: real^'n. contdiffx (partderiv (f$i) j1) j2 x"
    and hfc : "\<exists> c :: real^'n^'n. \<forall> i j :: 'n. partderiv (f$i) j - partderiv (f$j) i = (\<lambda> x :: real^'n. c$i$j)"
  shows "\<exists> g :: real^'n \<Rightarrow> real. \<forall> i :: 'n. linear (\<lambda> x :: real^'n. (f$i) x + partderiv g i x)"
  sorry

end