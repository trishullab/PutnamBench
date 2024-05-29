theory batch_10 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Computational_Algebra.Primes"
"HOL-Computational_Algebra.Polynomial"
begin

(* there may be multiple possible correct answers *)
definition putnam_2011_a3_solution :: "real \<times> real" where "putnam_2011_a3_solution \<equiv> undefined"
(* (-1, 2/pi) *)
theorem putnam_2011_a3:
  shows "let (c, L) = putnam_2011_a3_solution in (L > 0 \<and> filterlim (\<lambda>r::real. (r powr c * (set_lebesgue_integral lebesgue {0<..<(pi/2)} (\<lambda>x::real. x powr r * sin x))) / (set_lebesgue_integral lebesgue {0<..<(pi/2)} (\<lambda>x::real. x powr r * cos x))) (nhds L) at_top)"
  sorry

(* uses (nat \<Rightarrow> 'n) instead of (Fin n \<Rightarrow> 'n) *)
definition putnam_2011_a4_solution :: "nat set" where "putnam_2011_a4_solution \<equiv> undefined"
(* {n::nat. odd n} *)
theorem putnam_2011_a4:
  fixes n :: nat
  and intinner :: "int^'n \<Rightarrow> int^'n \<Rightarrow> int"
  and nmat :: bool
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hintinner2: "\<forall>u v::int^'n. intinner u v = (\<Sum>\<^sub>\<infinity>i::'n. u$i * v$i)"
  and hnmat: "\<exists>A::int^'n^'n. (\<forall>r::'n. even (intinner (row r A) (row r A))) \<and> (\<forall>r1 r2::'n. r1 \<noteq> r2 \<longrightarrow> odd (intinner (row r1 A) (row r2 A)))"
  shows "nmat \<longleftrightarrow> n \<in> putnam_2011_a4_solution"
  sorry

theorem putnam_2011_b1:
  fixes h k :: nat
  assumes hkpos: "h > 0 \<and> k > 0"
  shows "\<forall>\<epsilon>>0. \<exists>m n::nat. m > 0 \<and> n > 0 \<and> \<epsilon> < \<bar>h * sqrt m - k * sqrt n\<bar> \<and> \<bar>h * sqrt m - k * sqrt n\<bar> < 2*\<epsilon>"
  sorry

definition putnam_2011_b2_solution :: "nat set" where "putnam_2011_b2_solution \<equiv> undefined"
(* {2, 5} *)
theorem putnam_2011_b2:
  fixes S :: "(nat \<times> nat \<times> nat) set"
  and t :: nat
  and t7inS :: bool
  assumes hS: "S \<equiv> {(p::nat,q::nat,r::nat). prime p \<and> prime q \<and> prime r \<and> (\<exists>x::rat. p*x^2 + q*x + r = 0)}"
  and ht7inS: "t7inS \<equiv> (card {s\<in>S. fst s = t \<or> fst (snd s) = t \<or> snd (snd s) = t} \<ge> 7)"
  shows "(prime t \<and> t7inS) \<longleftrightarrow> t \<in> putnam_2011_b2_solution"
  sorry

theorem putnam_2014_b3:
  fixes m n :: nat
  and A :: "rat^'n^'m"
  assumes mnpos: "m > 0 \<and> n > 0"
  and pmpncard: "CARD('m) = m \<and> CARD('n) = n"
  and Aprime: "card {p::nat. prime p \<and> (\<exists>(i::'m)(j::'n). \<bar>A$i$j\<bar> = p)} \<ge> m + n"
  shows "rank A \<ge> 2"
  sorry

definition putnam_2015_b3_solution :: "(real^2^2) set" where "putnam_2015_b3_solution \<equiv> undefined"
(* {M::real^2^2. (\<exists>\<alpha> \<beta>::real. M$1$1 = \<alpha>*1 + \<beta>*-3 \<and> M$1$2 = \<alpha>*1 + \<beta>*-1 \<and> M$2$1 = \<alpha>*1 + \<beta>*1 \<and> M$2$2 = \<alpha>*1 + \<beta>*3)} *)
theorem putnam_2015_b3:
  fixes S :: "(real^2^2) set"
  and M :: "real^2^2"
  and Mpow :: "real^2^2 \<Rightarrow> nat \<Rightarrow> real^2^2"
  and MinS :: bool
  assumes hS: "S \<equiv> {M'::real^2^2. (M'$1$2 - M'$1$1 = M'$2$1 - M'$1$2) \<and> (M'$1$2 - M'$1$1 = M'$2$2 - M'$2$1)}"
  and hMpow: "\<forall>A::real^2^2. Mpow A 0 = mat 1 \<and> (\<forall>k::nat>0. Mpow A k = Mpow A (k-1) ** A)"
  and hMinS: "MinS \<equiv> (M \<in> S \<and> (\<exists>k::nat>1. Mpow M k \<in> S))"
  shows "MinS \<longleftrightarrow> M \<in> putnam_2015_b3_solution"
  sorry

definition putnam_2015_b6_solution :: real where "putnam_2015_b6_solution \<equiv> undefined"
(* pi^2 / 16 *)
theorem putnam_2015_b6:
  fixes A :: "nat \<Rightarrow> nat"
  assumes hA: "\<forall>k::nat>0. A k = card {j::nat. odd j \<and> j dvd k \<and> j < sqrt (2*k)}"
  shows "(\<Sum>\<^sub>\<infinity>k::nat\<in>{1..}. (-1)^(k-1) * (A k / k)) = putnam_2015_b6_solution"
  sorry

(* uses (nat \<Rightarrow> 'p) instead of (Fin p \<Rightarrow> 'p) and ('p \<Rightarrow> nat) instead of ('p \<Rightarrow> Fin p) *)
definition putnam_2019_a5_solution :: "nat \<Rightarrow> nat" where "putnam_2019_a5_solution \<equiv> undefined"
(* (\<lambda>p::nat. nat (round ((p - 1)/2))) *)
theorem putnam_2019_a5:
  fixes p :: nat
  and ppind :: "nat \<Rightarrow> 'p::comm_semiring_1"
  and q :: "'p poly"
  and a :: "nat \<Rightarrow> 'p"
  and ppindinv :: "'p \<Rightarrow> nat"
  and npoly :: "nat \<Rightarrow> ('p poly)"
  and ndiv :: "nat \<Rightarrow> bool"
  assumes podd: "odd p"
  and pprime: "prime p"
  and ppcard: "CARD('p) = p"
  and hppind: "ppind ` {0..(p-1)} = UNIV"
  and ppadd: "ppind 0 = 0 \<and> (\<forall>i::nat\<in>{0..(p-1)}. \<forall>j::nat\<in>{0..(p-1)}. ppind i + ppind j = ppind ((i + j) mod p))"
  and ppmult: "ppind 1 = 1 \<and> (\<forall>i::nat\<in>{0..(p-1)}. \<forall>j::nat\<in>{0..(p-1)}. ppind i * ppind j = ppind ((i * j) mod p))"
  and hq: "\<forall>k::nat. coeff q k = a k"
  and ha0: "a 0 = 0 \<and> (\<forall>k::nat>(p-1). a k = 0)"
  and haother: "\<forall>k::nat\<in>{1..(p-1)}. a k = ppind ((k ^ (nat (round ((p-1)/2)))) mod p)"
  and hppindinv: "\<forall>i::nat\<in>{0..(p-1)}. ppindinv (ppind i) = i"
  and hnpoly: "\<forall>n::nat. \<forall>x::'p. poly (npoly n) x = ppind (((ppindinv x - 1)^n) mod p)"
  and hndiv: "\<forall>n::nat. ndiv n = ((npoly n) dvd q)"
  shows "(GREATEST n::nat. ndiv n) = putnam_2019_a5_solution p"
  sorry

end
