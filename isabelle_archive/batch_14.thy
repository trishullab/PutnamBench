theory batch_14 imports Complex_Main
"HOL-Analysis.Derivative"
"HOL-Computational_Algebra.Polynomial"
"HOL-Combinatorics.Permutations"
"HOL-Number_Theory.Cong"
"HOL-Algebra.Multiplicative_Group"
begin

(* Note: Modified definition of tangent to handle this, but this is a bit of cheating - You would have to know that this works *)
definition putnam_2007_a1_solution :: "real set" where "putnam_2007_a1_solution \<equiv> undefined"
(* {2/3, 3/2, (13 + sqrt 601)/12, (13 - sqrt 601)/12} *)
definition reflect_tangent :: "(real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool" where "reflect_tangent \<equiv> (\<lambda>f g::real\<Rightarrow>real. f C1_differentiable_on UNIV \<and> g C1_differentiable_on UNIV \<and> (\<exists>x y::real. f x = y \<and> g y = x \<and> deriv f x = 1 / deriv g y))"
theorem putnam_2007_a1:
  shows "\<forall>a::real. (reflect_tangent (\<lambda>x::real. a*x^2 + a*x + 1/24) (\<lambda>y::real. a*y^2 + a*y + 1/24) \<longleftrightarrow> a \<in> putnam_2007_a1_solution)"
  sorry

(* Note: Since the coefficient is defined for all natural numbers, the condition here is modified to nonnegative which is what makes sense *)
theorem putnam_2007_b1:
  fixes f :: "int poly"
  and n :: int
  assumes hf: "\<forall>n'::nat. poly.coeff f n' \<ge> 0"
  and hfnconst: "\<exists>n'::nat. n' > 0 \<and> poly.coeff f n' > 0"
  and hn: "n > 0"
  shows "((poly f n) dvd (poly f (poly f n + 1))) \<longleftrightarrow> n = 1"
  sorry

definition putnam_2008_a4_solution :: bool where "putnam_2008_a4_solution \<equiv> undefined"
(* False *)
theorem putnam_2008_a4:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "f \<equiv> (\<lambda>x::real. if x \<le> exp 1 then x else (x * f (ln x)))"
  shows "(\<exists>r::real. filterlim (\<lambda>N::nat. (\<Sum>n::nat=1..N. 1/f n)) (nhds r) at_top) \<longleftrightarrow> putnam_2008_a4_solution"
  sorry

(* uses (nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n) *)
definition klimited :: "nat \<Rightarrow> nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> bool" where "klimited \<equiv> (\<lambda>(k::nat)(n::nat)(s::nat\<Rightarrow>nat). s permutes {0..(n-1)} \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<bar>s i - i\<bar> \<le> k))"
theorem putnam_2008_b6:
  fixes n k :: nat
  assumes hnk: "n > 0 \<and> k > 0"
  shows "odd (card {s::nat\<Rightarrow>nat. klimited k n s}) \<longleftrightarrow> ([n = 0] (mod 2*k+1) \<or> [n = 1] (mod 2*k+1))"
  sorry

definition putnam_2008_b5_solution :: "(real \<Rightarrow> real) set" where "putnam_2008_b5_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>n::int. f = (\<lambda>x::real. x + n))} \<union> {f::real\<Rightarrow>real. (\<exists>n::int. f = (\<lambda>x::real. -x + n))} *)
theorem putnam_2008_b5:
  fixes fqsat :: "(real \<Rightarrow> real) \<Rightarrow> rat \<Rightarrow> bool"
  and fsat :: "(real \<Rightarrow> real) \<Rightarrow> bool"
  defines "fqsat \<equiv> (\<lambda>(f::real\<Rightarrow>real)(q::rat). f C1_differentiable_on UNIV \<and> (\<exists>p::rat. p = f (real_of_rat q) \<and> snd (quotient_of p) = snd (quotient_of q)))"
  and "fsat \<equiv> (\<lambda>f::real\<Rightarrow>real. (\<forall>q::rat. fqsat f q))"
  shows "\<forall>f::real\<Rightarrow>real. (fsat f \<longleftrightarrow> f \<in> putnam_2008_b5_solution)"
  sorry

definition putnam_2009_a5_solution :: bool where "putnam_2009_a5_solution \<equiv> undefined"
(* False *)
theorem putnam_2009_a5:
  assumes pacount: "\<exists>pamap::'a\<Rightarrow>nat. surj pamap"
  shows "(\<exists>G::'a monoid. finite (carrier G) \<and> comm_group G \<and> (\<Prod>g\<in>(carrier G). (group.ord G) g) = 2^2009) \<longleftrightarrow> putnam_2009_a5_solution"
  sorry

(* uses (nat \<Rightarrow> nat) instead of (Fin k \<Rightarrow> nat) and (Fin m \<Rightarrow> nat) *)
theorem putnam_2009_b1:
  fixes isquotprodprimefact :: "rat \<Rightarrow> bool"
  defines "isquotprodprimefact \<equiv> (\<lambda>q::rat. (\<exists>(k::nat)(m::nat)(a::nat\<Rightarrow>nat)(b::nat\<Rightarrow>nat).
    (\<forall>i::nat\<in>{0..(k-1)}. prime (a i)) \<and> (\<forall>j::nat\<in>{0..(m-1)}. prime (b j))
    \<and> q = (\<Prod>i::nat=0..(k-1). fact (a i)) / (\<Prod>j::nat=0..(m-1). fact (b j))))"
  shows "\<forall>q::rat. (q > 0 \<longrightarrow> isquotprodprimefact q)"
  sorry

end
