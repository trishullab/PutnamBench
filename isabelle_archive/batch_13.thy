theory batch_13 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

definition putnam_2009_a1_solution :: bool where "putnam_2009_a1_solution \<equiv> undefined"
(* True *)
theorem putnam_2009_a1:
  shows "(\<forall>f::(real\<times>real)\<Rightarrow>real. (\<forall>A v::real\<times>real. v \<noteq> (0, 0) \<longrightarrow> f (fst A, snd A) + f (fst A+fst v, snd A+snd v) + f (fst A+fst v-snd v, snd A+snd v+fst v) + f (fst A-snd v, snd A+fst v) = 0) \<longrightarrow> (\<forall>P::real\<times>real. f P = 0)) \<longleftrightarrow> putnam_2009_a1_solution"
  sorry

definition putnam_2009_a4_solution :: bool where "putnam_2009_a4_solution \<equiv> undefined"
(* False *)
theorem putnam_2009_a4:
  shows "(\<forall>S::rat set. 0 \<in> S \<longrightarrow> (\<forall>x\<in>S. x+1 \<in> S \<and> x-1 \<in> S) \<longrightarrow> (\<forall>x\<in>S. x \<notin> {0, 1} \<longrightarrow> 1 / (x*(x-1)) \<in> S) \<longrightarrow> (\<forall>r::rat. r \<in> S)) \<longleftrightarrow> putnam_2009_a4_solution"
  sorry

definition putnam_2009_b3_solution :: "nat set" where "putnam_2009_b3_solution \<equiv> undefined"
(* {n::nat. (\<exists>k::nat\<ge>1. n = 2^k - 1)} *)
theorem putnam_2009_b3:
  fixes mediocre :: "nat \<Rightarrow> nat set \<Rightarrow> bool"
  and A :: "nat \<Rightarrow> int"
  defines "mediocre \<equiv> (\<lambda>(n::nat)(S::nat set). S \<subseteq> {1..n} \<and> (\<forall>a\<in>S. \<forall>b\<in>S. 2 dvd (a + b) \<longrightarrow> (nat (round ((a + b)/2))) \<in> S))"
  and "A \<equiv> (\<lambda>n::nat. card {S::nat set. mediocre n S})"
  shows "{n::nat. n > 0 \<and> A (n+2) - 2*A (n+1) + A n = 1} = putnam_2009_b3_solution"
  sorry

(* uses (real \<Rightarrow> real) instead of ({1<..} \<Rightarrow> real) *)
theorem putnam_2009_b5:
  fixes f :: "real \<Rightarrow> real"
  assumes hfdiff: "f differentiable_on {1<..}"
  and f: "\<forall>x::real>1. deriv f x = (x^2 - (f x)^2) / (x^2 * ((f x)^2 + 1))"
  shows "filterlim f at_top at_top"
  sorry

(* uses (nat \<Rightarrow> int) instead of ({0..2009} \<Rightarrow> int) *)
theorem putnam_2009_b6:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "\<exists>a::nat\<Rightarrow>int. a 0 = 0 \<and> a 2009 = n \<and> (\<forall>i::nat\<in>{1..2009}. (\<exists>j::nat<i. \<exists>k::nat. a i = a j + 2^k) \<or> (\<exists>b::nat<i. \<exists>c::nat<i. a b > 0 \<and> a c > 0 \<and> a i = (a b) mod (a c)))"
  sorry

definition putnam_2011_b3_solution :: bool where "putnam_2011_b3_solution \<equiv> undefined"
(* True *)
theorem putnam_2011_b3:
  shows "(\<forall>f g::real\<Rightarrow>real. g 0 \<noteq> 0 \<longrightarrow> continuous_on {0} g \<longrightarrow> (\<lambda>x::real. f x*g x) differentiable_on {0} \<longrightarrow> (\<lambda>x::real. f x/g x) differentiable_on {0} \<longrightarrow> f differentiable_on {0}) \<longleftrightarrow> putnam_2011_b3_solution"
  sorry

theorem putnam_2011_b5:
  fixes a :: "nat \<Rightarrow> real"
  assumes h: "\<exists>A::real. \<forall>n::nat. (set_lebesgue_integral lebesgue \<real> (\<lambda>x::real. (\<Sum>i::nat=0..(n-1). 1 / (1 + (x-a i)^2)) ^ 2)) \<le> A*n"
  shows "\<exists>B::real>0. \<forall>n::nat. (\<Sum>i::nat=0..(n-1). \<Sum>j::nat=0..(n-1). 1 + (a i-a j)^2) \<ge> B*n^3"
  sorry

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
theorem putnam_2014_b6:
  fixes f :: "real \<Rightarrow> real"
  assumes hlip: "\<exists>K::real>0. \<forall>x::real\<in>{0..1}. \<forall>y::real\<in>{0..1}. \<bar>f x - f y\<bar> \<le> K*\<bar>x - y\<bar>"
  and hrat: "\<forall>r::rat\<in>{0..1}. \<exists>a b::int. f (real_of_rat r) = a + b*r"
  shows "\<exists>I::(real set) set. finite I \<and> (\<forall>Ii\<in>I. (\<exists>a b::real. a \<le> b \<and> Ii = {a..b}) \<and> (\<exists>m c::real. \<forall>x::real\<in>Ii. f x = c + m*x)) \<and> {0..1} = \<Union> I"
  sorry

end
