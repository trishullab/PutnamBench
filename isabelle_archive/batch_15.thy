theory batch_15 imports
Complex_Main
"HOL-Algebra.Multiplicative_Group"
"HOL-Computational_Algebra.Primes"
"HOL-Computational_Algebra.Polynomial"
"HOL-Number_Theory.Cong"
"HOL-Analysis.Derivative"
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
begin

theorem putnam_2008_a6:
  shows "\<exists> c :: real. c > 0 \<and> (\<forall> G :: 'a monoid. group G \<longrightarrow> finite (carrier G) \<longrightarrow> card (carrier G) > 1 \<longrightarrow> (\<exists> s :: 'a list. length s \<le> c * ln (card (carrier G)) \<and> (\<forall> g \<in> carrier G. \<exists> t \<in> set (subseqs s). foldr (\<otimes>\<^bsub>G\<^esub>) t (\<one>\<^bsub>G\<^esub>) = g)))"
  sorry

theorem putnam_2008_b4:
  fixes p :: nat
  and h :: "int poly"
  assumes hp: "prime p"
  and hh: "\<forall> i \<in> {0 .. p ^ 2 - 1}. \<forall> j \<in> {0 .. p ^ 2 - 1}. [poly h i = poly h j] (mod p ^ 2) \<longrightarrow> i = j"
  shows "\<forall> i \<in> {0 .. p ^ 3 - 1}. \<forall> j \<in> {0 .. p ^ 3 - 1}. [poly h i = poly h j] (mod p ^ 3) \<longrightarrow> i = j"
  sorry

definition putnam_2007_a4_solution :: "(real poly) set" where "putnam_2007_a4_solution \<equiv> undefined"
(* {f :: real poly. \<exists> d :: nat. \<exists> c :: int. c \<ge> 1 - d \<and> (\<forall> n :: real. poly f n = (1 / 9) * ((10 powr c) * (9 * n + 1) ^ d - 1))} *)
theorem putnam_2007_a4:
  fixes repunit :: "real \<Rightarrow> bool"
  defines "repunit \<equiv> \<lambda> x :: real. x > 0 \<and> x = real_of_int (floor x) \<and> (\<forall> i :: nat. (10 ^ i \<le> floor x) \<longrightarrow> ((floor x) div (10 ^ i)) mod 10 = 1)"
  shows "{f :: real poly. \<forall> n :: real. repunit n \<longrightarrow> repunit (poly f n)} = putnam_2007_a4_solution"
  sorry

theorem putnam_2007_b2:
  fixes f :: "real \<Rightarrow> real"
  assumes hf: "f C1_differentiable_on {0..1}"
  and hfint: "set_lebesgue_integral lebesgue {0..1} f = 0"
  shows "\<forall> \<alpha> \<in> {0<..<1}. \<bar>set_lebesgue_integral lebesgue {0..\<alpha>} f\<bar> \<le> (1 / 8) * (GREATEST y. \<exists> x \<in> {0..1}. \<bar>deriv f x\<bar> = y)"
  sorry

definition putnam_2007_b3_solution :: real where "putnam_2007_b3_solution \<equiv> undefined"
(* (2 ^ 2006 / sqrt 5) * ((((1 + sqrt 5) / 2) powr 3997) - (((1 + sqrt 5) / 2) powr -3997)) *)
theorem putnam_2007_b3:
  fixes x :: "nat \<Rightarrow> real"
  assumes hx0: "x 0 = 1"
  and hx: "\<forall> n :: nat. x (n + 1) = 3 * (x n) + floor (x n + sqrt 5)"
  shows "x 2007 = putnam_2007_b3_solution" 
  sorry

definition putnam_2007_b4_solution :: "nat \<Rightarrow> nat" where "putnam_2007_b4_solution \<equiv> undefined"
(* \<lambda> n. 2 ^ (n + 1) *)
theorem putnam_2007_b4:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "card {(P :: real poly, Q :: real poly). P ^ 2 + Q ^ 2 = (monom 1 (2 * n)) + 1 \<and> degree P > degree Q} = putnam_2007_b4_solution n"
  sorry

theorem putnam_2007_b5:
  fixes k :: nat
  assumes kpos: "k > 0"
  shows "\<exists> P :: real poly list. length P = k \<and> (\<forall> n :: int. \<lfloor>n / k\<rfloor> ^ k = (\<Sum> i = 0..(k - 1). poly (P!i) n * \<lfloor>n / k\<rfloor> ^ i))"
  sorry

theorem putnam_2006_a3:
  fixes x :: "nat \<Rightarrow> nat"
  assumes hxlo: "\<forall> k \<in> {1 .. 2006}. x k = k"
  and hxhi: "\<forall> k \<ge> 2006. x (k + 1) = x k + x (k - 2005)"
  shows "\<exists> i :: nat. i > 0 \<and> (\<forall> j \<in> {0 ..< 2005}. 2006 dvd x (i + j))"
  sorry

theorem putnam_2006_b2:
  fixes n :: nat
  and X :: "real set"
  assumes npos: "n > 0"
  and hXcard: "finite X \<and> card X = n"
  shows "\<exists> S \<subseteq> X. (S \<noteq> {}) \<and> (\<exists> m :: int. \<bar>m + (\<Sum> s \<in> S. s)\<bar> \<le> 1 / (n + 1))"
  sorry

definition putnam_2006_b5_solution :: real where "putnam_2006_b5_solution \<equiv> undefined"
(* 1 / 16 *)
theorem putnam_2006_b5:
  fixes I :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and J :: "(real \<Rightarrow> real) \<Rightarrow> real"
  defines "I \<equiv> \<lambda> f. set_lebesgue_integral lebesgue {0..1} (\<lambda> x. x ^ 2 * (f x))"
  and "J \<equiv> \<lambda> f. set_lebesgue_integral lebesgue {0..1} (\<lambda> x. x * (f x) ^ 2)"
  shows "(GREATEST y. \<exists> f. continuous_on {0..1} f \<and> I f - J f = y) = putnam_2006_b5_solution"
  sorry

end