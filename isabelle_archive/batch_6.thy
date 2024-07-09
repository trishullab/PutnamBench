theory batch_6 imports Complex_Main
"HOL-Analysis.Determinants"
"HOL-Computational_Algebra.Primes"
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Derivative"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2014_a2_solution :: "nat \<Rightarrow> real" where "putnam_2014_a2_solution \<equiv> undefined"
(* (\<lambda>n::nat. (-1)^(n-1) / (fact (n-1) * fact n)) *)
theorem putnam_2014_a2:
  fixes n :: nat
  and A :: "real^'n^'n"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hA: "\<exists>pnind::nat\<Rightarrow>'n. pnind ` {0..(n-1)} = UNIV \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. A$(pnind i)$(pnind j) = 1 / min (i+1) (j+1))"
  shows "det A = putnam_2014_a2_solution n"
  sorry

(* there are several possible correct solutions; this is the one shown on the solutions document *)
definition putnam_2015_a2_solution :: nat where "putnam_2015_a2_solution \<equiv> undefined"
(* 181 *)
theorem putnam_2015_a2:
  fixes a :: "nat \<Rightarrow> nat"
  assumes abase: "a 0 = 1 \<and> a 1 = 2"
  assumes arec: "\<forall>n::nat\<ge>2. a n = 4 * a (n-1) - a (n-2)"
  shows "odd putnam_2015_a2_solution \<and> prime putnam_2015_a2_solution \<and> putnam_2015_a2_solution dvd (a 2015)"
  sorry

definition putnam_2015_a3_solution :: complex where "putnam_2015_a3_solution \<equiv> undefined"
(* 13725 *)
theorem putnam_2015_a3:
  shows "log 2 (Re (\<Prod>a::nat=1..2015. \<Prod>b::nat=1..2015. (1 + exp (2*pi*\<i>*a*b/2015)))) = putnam_2015_a3_solution"
  sorry

theorem putnam_2015_a5:
  fixes q :: nat
  and Nq :: nat
  assumes qodd: "odd q"
  and qpos: "q > 0"
  and hNq: "Nq = card {a::nat. 0 < a \<and> a < (real q)/4 \<and> gcd a q = 1}"
  shows "odd Nq \<longleftrightarrow> (\<exists>p k::nat. q = p^k \<and> k > 0 \<and> prime p \<and> (p mod 8 = 5 \<or> p mod 8 = 7))"
  sorry

theorem putnam_2015_a6:
  fixes n :: nat
  and A B M :: "real^'n^'n"
  and charpoly :: "real^'n^'n \<Rightarrow> (real poly)"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hmul: "A ** M = M ** B"
  and hcharpoly: "\<forall>A'::real^'n^'n. charpoly A' = det (mat (monom 1 1) - map_matrix (\<lambda>a::real. monom a 0) A')"
  and hpoly: "charpoly A = charpoly B"
  shows "\<forall>X::real^'n^'n. det (A - M**X) = det (B - X**M)"
  sorry

theorem putnam_2015_b1:
  fixes f :: "real \<Rightarrow> real"
  and nzeros :: "(real \<Rightarrow> real) \<Rightarrow> nat \<Rightarrow> bool"
  assumes fdiff: "f C1_differentiable_on UNIV \<and> (deriv f) C1_differentiable_on UNIV \<and> ((deriv^^2) f) differentiable_on UNIV"
  and hnzeros: "\<forall>(f'::real\<Rightarrow>real)(n::nat). nzeros f' n = (card {x::real. f' x = 0} \<ge> n)"
  and fzeros: "nzeros f 5"
  shows "nzeros (\<lambda>x::real. f x + (6*deriv f x) + (12*(deriv^^2) f x) + (8*(deriv^^3) f x)) 2"
  sorry

(* uses ((real \<Rightarrow> real) set) instead of (({1<..} \<Rightarrow> {1<..}) set) *)
definition putnam_2016_b5_solution :: "(real \<Rightarrow> real) set" where "putnam_2016_b5_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>c::real. c > 0 \<and> (\<forall>x::real>1. f x = x powr c))} *)
theorem putnam_2016_b5:
  fixes f :: "real \<Rightarrow> real"
  and fle :: bool
  assumes hfle: "fle = (\<forall>x::real>1. \<forall>y::real>1. (x^2 \<le> y \<and> y \<le> x^3) \<longrightarrow> ((f x)^2 \<le> f y \<and> f y \<le> (f x)^3))"
  shows "fle \<longleftrightarrow> f \<in> putnam_2016_b5_solution"
  sorry

definition putnam_2016_b6_solution :: real where "putnam_2016_b6_solution \<equiv> undefined"
(* 1 *)
theorem putnam_2016_b6:
  shows "(\<Sum>\<^sub>\<infinity>k::nat\<in>{1..}. ((-1)^(k-1) / k) * (\<Sum>n::nat. 1 / (k*2^n + 1))) = putnam_2016_b6_solution"
  sorry

definition putnam_2019_a4_solution :: bool where "putnam_2019_a4_solution \<equiv> undefined"
(* False *)
theorem putnam_2019_a4:
  fixes fint :: "((real^3) \<Rightarrow> real) \<Rightarrow> bool"
  assumes hfint: "\<forall>f::(real^3)\<Rightarrow>real. fint f = (\<forall>S::real^3. set_lebesgue_integral lebesgue (sphere S 1) f = 0)"
  shows "(\<forall>f::(real^3)\<Rightarrow>real. (continuous_on UNIV f \<and> fint f) \<longrightarrow> (\<forall>x::real^3. f x = 0)) \<longleftrightarrow> putnam_2019_a4_solution"
  sorry

end
