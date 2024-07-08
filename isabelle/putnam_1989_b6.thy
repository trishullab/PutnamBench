theory putnam_1989_b6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Interval_Integral"
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_1989_b6:
  fixes n :: "nat"
    and Sx :: "(real^'n) set"
    and fprop :: "(real \<Rightarrow> real) \<Rightarrow> bool"
    and xext :: "(real^'n) \<Rightarrow> (nat \<Rightarrow> real)"
    and fxsum :: "(real \<Rightarrow> real) \<Rightarrow> (real^'n) \<Rightarrow> real"
    and fEV :: "(real \<Rightarrow> real) \<Rightarrow> real"
    and bij :: "nat \<Rightarrow> 'n"
  defines "Sx \<equiv> {x :: real^'n. (\<forall> i :: 'n. x$i \<in> {0<..<1}) \<and> (\<forall> j \<in> {1..n-1}. x$(bij (j + 1)) > x$(bij j))}"
    and "fprop \<equiv> \<lambda> f :: real \<Rightarrow> real. continuous_on {0..1} f \<and> f 1 = 0"
    and "fxsum \<equiv> \<lambda> (f :: real \<Rightarrow> real) (x :: real^'n). (\<Sum> i \<in> {0..n}. ((xext x) (i + 1) - (xext x) i) * f ((xext x) (i + 1)))"
    and "fEV \<equiv>  \<lambda> f :: real \<Rightarrow> real. (set_lebesgue_integral lebesgue Sx (fxsum f)) / (set_lebesgue_integral lebesgue Sx (\<lambda> x :: real^'n. 1))"
  assumes hcard : "CARD('n) = n"
    and hbij : "bij_betw bij {1..n} (UNIV :: 'n set)"
    and npos : "n \<ge> 1"
    and hext : "\<forall> x :: real^'n. xext x 0 = 0 \<and> xext x (n + 1) = 1 \<and> (\<forall> i \<in> {1..n}. xext x i = x$(bij i))"
  shows "\<exists> P :: real poly. degree P = n \<and> (\<forall> t \<in> {0..1}. poly P t \<in> {0..1}) \<and> (\<forall> f :: real \<Rightarrow> real. fprop f \<longrightarrow> fEV f = (interval_lebesgue_integral lebesgue 0 1 (\<lambda> t :: real. f t * poly P t)))"
  sorry

end
