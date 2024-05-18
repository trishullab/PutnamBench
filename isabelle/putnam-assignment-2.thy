theory putnam_prep_2 imports Complex_Main "HOL-Analysis.Analysis"
begin

theorem putnam_1998_A3:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "continuous_on UNIV ((deriv^^3) f)"
  shows "\<exists> a :: real. f a * deriv f a * (deriv^^2) f a * (deriv^^3) f a \<ge> 0"
  sorry

theorem putnam_1999_B4:
  fixes f :: "real\<Rightarrow>real"
  assumes f_cont : "continuous_on UNIV ((deriv^^3) f)"
    and f_pos : "\<forall>x. f x > 0"
    and f'_pos : "\<forall>x. deriv f x > 0"
    and f''_pos : "\<forall>x. (deriv^^2) f x > 0"
    and f'''_pos : "\<forall>x. (deriv^^3) f x > 0"
    and hf : "\<forall>x. (deriv^^3) f x \<le> f x"
  shows "\<forall>x. deriv f x < 2 * f x"
  sorry

theorem putnam_2000_B4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf : "\<forall>x. f (2 * x^2  - 1) = 2 * x * f x"
    and f_cont : "continuous_on UNIV f"
  shows "\<forall>x. x \<ge> -1 \<and> x \<le> 1 \<longrightarrow> f x = 0"
  sorry

definition putnam_2023_A1_solution::nat where "putnam_2023_A1_solution \<equiv> undefined"
(* 18 *)
theorem putnam_2023_A1:
  fixes n :: nat and f :: "nat \<Rightarrow> real \<Rightarrow> real"
  defines "f \<equiv> \<lambda>n. \<lambda>x. \<Prod>i=1..n. cos (real i * x)"
  shows "putnam_2023_A1_solution = (LEAST m::nat. m > 0 \<and> abs ((deriv^^2) (f m) 0) > 2023)"
  sorry

theorem putnam_2018_A5:
  fixes f :: "real\<Rightarrow>real"
  assumes f_diff : "\<forall>n. (deriv^^n) f differentiable_on UNIV"
    and f0 : "f 0 = 0"
    and f1 : "f 1 = 1"
    and fpos : "\<forall>x. f x \<ge> 0"
  shows "\<exists>n > 0. \<exists>x::real. (deriv^^n) f x < 0"
  sorry

theorem putnam_2001_A1:
  fixes op :: "'a => 'a => 'a"
  assumes hop : "\<forall>a b :: 'a. op (op a b) a = b"
  shows "\<forall>a b :: 'a. op a (op b a) = b"
  sorry

theorem putnam_2018_B4:
  fixes a::real and f::"nat \<Rightarrow> real"
  assumes f0 : "f 0 = 1"
    and f1 : "f 1 = a"
    and f2 : "f 2 = a"
    and fn : "\<forall>n \<ge> 2. f (n+1) = 2  * f n * f (n-1) - f (n-2)"
    and fex0 : "\<exists>n. f n = 0"
  shows "\<exists>T>0. \<forall>n. f (n + T) = f n"
  sorry

theorem putnam_2014_A1:
  fixes f::"real\<Rightarrow>real" and coeff::"nat\<Rightarrow>real" and n::nat
  defines "f \<equiv> \<lambda>x. (1 - x + x^2) * exp (x)"
    and "coeff \<equiv> \<lambda>n. (deriv^^n) f 0 / fact n"
  assumes non_zero : "coeff n \<noteq> 0"
  shows "\<exists>r::rat. coeff n = r \<and> (fst (quotient_of r) = 1 \<or> prime (fst (quotient_of r)))"
  sorry
  
end