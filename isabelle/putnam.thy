theory putnam_prep imports Complex_Main "HOL-Analysis.Analysis"
begin

(* replace undefined with {2^2, 2^4, 2^8, 2^16} *)
definition putnam_2018_B3_solution::"nat set" where "putnam_2018_B3_solution \<equiv> undefined"
theorem putnam_2018_B3:
  shows "putnam_2018_B3_solution \<equiv> {n::nat. n > 3 \<and> n < 10^100 \<and> 
    n dvd 2^n \<and> (n-1) dvd (2^n - 1) \<and> (n-2) dvd (2^n - 2)}"
  sorry

theorem putnam_2017_B3:
  fixes f :: "real \<Rightarrow> real" and c :: "nat \<Rightarrow> real"
  defines hf: "f \<equiv> \<lambda>x. \<Sum>i\<in>\<nat>.  c (i) * x^i"
  assumes hc: "\<forall>n. c n = 0 \<or> c n = 1"
    and "f (2/3) = 3/2"
  shows "f (1/2) \<notin> \<rat>"
  sorry

(* Note: Boosted domain to infinite set *)
theorem putnam_2020_B5:
  fixes z :: "nat \<Rightarrow> complex"
  assumes hz: "\<forall>n \<in> {1..4}. norm (z n) = 1"
    and hzne1: "\<forall>n \<in> {1..4}. z n \<noteq> 1"
  shows "3 - z 1 - z 2 - z 3 - z 4 + z 1 * z 2 * z 3 * z 4 \<noteq> 0"
  sorry

theorem putnam_2018_B2:
  fixes n :: nat and f_n :: "complex \<Rightarrow> complex" and z :: complex
  defines "f_n \<equiv> \<lambda>x::complex. \<Sum>i=0..(n-1). (n - i) * x^i"
  assumes npos: "n > 0" and zunit: "norm(z) \<le> 1"
  shows "f_n(z) \<noteq> 0"
  sorry

theorem putnam_1998_B6:
  fixes a b c :: int
  shows "\<exists> n:: int > 0 . sqrt (n^3 + a * n^2 + b * n + c) \<notin> \<int>"
  sorry

theorem putnam_1999_B6:
  fixes S::"int set"
  assumes S_fin: "finite S"
    and Sge1: "\<forall>s \<in> S. s > 1"
    and hgcd: "\<forall>n::int. \<exists>s \<in> S. (gcd s n) = 1 \<or> (gcd s n) = s"
  shows "\<exists> s \<in> S. \<exists> t \<in> S. prime(gcd s t)"
  sorry

theorem putnam_2010_A4:
  fixes n :: nat
  assumes n_pos : "n > 0"
  shows "\<not> prime (10^(10^(10^n)) + 10^(10^n) + 10^n - 1)"
  sorry


definition sum_of_squares:: "int \<Rightarrow> bool" where
  "sum_of_squares n \<equiv> \<exists>a b::int. n = a^2 + b^2"

theorem putnam_2000_A2:
  shows "\<forall>n :: int. \<exists>m::int. m > n \<and> 
    sum_of_squares m \<and> sum_of_squares (m+1) \<and> sum_of_squares (m+2)"
  sorry


end