theory Batch17 imports Complex_Main "HOL-Combinatorics.Permutations" "HOL-Analysis.Determinants"
 "HOL-Computational_Algebra.Polynomial" "HOL-Analysis.Interval_Integral"
begin

theorem putnam_2005_b4:
  fixes m n::nat and f::"nat\<Rightarrow>nat\<Rightarrow>nat"
  assumes mnpos : "m > 0 \<and> n > 0"
    and "\<forall>m' > 0. \<forall>n' > 0. f m' n' = card {x::int list. size x = n' \<and> (\<Sum>i=0..<n'. abs(x!i)) \<le> m'}"
  shows "f m n = f n m"
  sorry

theorem putnam_2005_b6:
  fixes n::nat and S::"(nat\<Rightarrow>nat) set" and \<sigma>::"(nat\<Rightarrow>nat) \<Rightarrow> int" and v::"(nat\<Rightarrow>nat) \<Rightarrow> int" 
  defines "S \<equiv> {p. p permutes {1..n}}"
    and "\<sigma> \<equiv> \<lambda>p. if (evenperm p) then 1 else -1"
    and "v \<equiv> \<lambda>p. card {x::nat. x > 0 \<and> x \<le> n \<and> p x = x}"
  assumes npos : "n > 0"
  shows "(\<Sum>p \<in> S. rat_of_int (\<sigma> p) / (rat_of_int (v p) + 1)) = (-1)^(n+1) * (rat_of_nat n) / (rat_of_nat n+1)"
  sorry

theorem putnam_2004_a3:
  fixes u::"nat\<Rightarrow>real"
  assumes hubase : "u 0 = 1 \<and> u 1 = 1 \<and> u 2 = 1"
    and hudet : "\<forall>n::nat. det (vector[vector[u n, u (n+1)], vector[u (n+2), u (n+3)]]) = fact n"
  shows "\<forall>n::nat. u n \<in> \<int>"
  sorry

(* Note: Boosted domain to infinite set *)
theorem putnam_2004_a4:
  fixes n::nat and x::"nat\<Rightarrow>real" and avals::"nat \<Rightarrow> (nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
  defines "avals \<equiv> \<lambda>N. \<lambda>a. \<forall>i \<in> {0..<N}. \<forall>j \<in> {0..<n}. (a i j = -1 \<or> a i j = 0 \<or> a i j = 1)"
  assumes npos : "n > 0"
  shows "\<exists>N::nat. \<exists>c::nat\<Rightarrow>rat. \<exists>a. avals N a \<and> ((\<Prod>i=0..<n. x i) = (\<Sum>i=0..<N. (c i * (\<Sum>j=0..<n. a i j * x j)^n)))"
  sorry

theorem putnam_2004_a6:
  fixes f::"(real\<times>real)\<Rightarrow>real" and usquare::"(real\<times>real) set" and Fx Fy::"real\<Rightarrow>real\<Rightarrow>real"
  defines "usquare \<equiv> {(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> x \<le> 1 \<and> y \<le> 1}"
  assumes fcont : "continuous_on usquare f"
    and fxderiv : "\<forall>y::real \<in> {0<..<1}. \<forall>x::real \<in> {0<..<1}. ((Fx y) has_derivative (\<lambda>x. f (x, y))) (nhds x)"
    and fyderiv : "\<forall>x::real \<in> {0<..<1}. \<forall>y::real \<in> {0<..<1}. ((Fy x) has_derivative (\<lambda>y. f (x, y))) (nhds y)"
  shows "interval_lebesgue_integral lebesgue 0 1 (\<lambda>y. (Fx y 1 - Fx y 0)^2) + 
    interval_lebesgue_integral lebesgue 0 1 (\<lambda>x. (Fy x 1 - Fy x 0)^2) \<le> 
    (set_lebesgue_integral lebesgue usquare f)^2 + set_lebesgue_integral lebesgue usquare (\<lambda>(x, y). f (x, y)^2)"
  sorry

(* Note: Boosted domain to infinite set *)
theorem putnam_2004_b1:
  fixes n::nat and P::"real poly" and r::rat
  assumes Pdeg : "degree p = n"
    and Pcoeff : "\<forall>i \<in> {0..n}. (coeff p i) \<in> \<int>"
    and Preq0 : "poly p r = 0"
  shows "\<forall>i \<in> {0..<n}. (\<Sum>j=0..i. (coeff p (n-j) * r^(i+1-j))) \<in> \<int>"
  sorry

theorem putnam_2004_b2:
  fixes m n::nat
  assumes mnpos : "m > 0 \<and> n > 0"
  shows "fact (m+n) / (m+n)^(m+n) < (fact m / m^m) * (fact n / n^n)"
  sorry

definition putnam_2004_b5_solution where "putnam_2004_b5_solution \<equiv> undefined"
(* 2 / exp 1 *)
theorem putnam_2004_b5:
  fixes xprod::"real\<Rightarrow>real"
  defines "xprod \<equiv> \<lambda>x. lim (\<lambda>N::nat. (\<Prod>n=0..N. ((1+x^(n+1)) / (1 + x^n)) powr (x^n)))"
  shows "(xprod \<longlongrightarrow>  putnam_2004_b5_solution) (at_left 1)"
  sorry

theorem putnam_2004_b6:
  fixes A B::"nat set" and N::"real\<Rightarrow>nat" and b::"nat\<Rightarrow>nat"
  defines "N \<equiv> \<lambda>x::real. card {a\<in>A. a \<le> x}"
    and "B \<equiv> {b'. b' > 0 \<and> (\<exists>a \<in> A. \<exists>a' \<in> A. b' = a - a')}"
  assumes Anempty : "card A > 0"
    and Apos : "\<forall>a \<in> A. a > 0"
    and hbB : "B = image b {1..(card B)}"
    and hbasc : "\<forall>i::nat. b i < b (i+1)"
  shows "(\<forall>r::nat. \<exists>i::nat. (b (i+1) - b i) \<ge> r) \<longrightarrow> ((\<lambda>x::real. N x / x) \<longlongrightarrow> 0) at_top"
  sorry

end