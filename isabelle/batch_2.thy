theory batch_2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Analysis.Cross3"
"HOL-Number_Theory.Cong"
begin

theorem putnam_2020_b6:
  fixes n :: nat
  assumes npos: "n > 0"
  shows "(\<Sum>k::nat=1..n. (-1) ^ (nat \<lfloor>k * (sqrt 2 - 1)\<rfloor>)) \<ge> 0"
  sorry

definition putnam_2021_a2_solution :: real where "putnam_2021_a2_solution \<equiv> undefined"
(* exp 1 *)
theorem putnam_2021_a2:
  fixes g :: "real \<Rightarrow> real"
  assumes hg: "\<forall>x::real>0. filterlim (\<lambda>r::real. ((x+1) powr (r+1) - x powr (r+1)) powr (1/r)) (nhds (g x)) (nhds 0)"
  shows "filterlim (\<lambda>x::real. g x / x) (nhds putnam_2021_a2_solution) at_top"
  sorry

definition putnam_2021_a5_solution :: "nat set" where "putnam_2021_a5_solution \<equiv> undefined"
(* {j::nat. \<not>(42 dvd j) \<and> \<not>(46 dvd j)} *)
theorem putnam_2021_a5:
  fixes j :: nat
  and A :: "nat set"
  and S :: "nat \<Rightarrow> nat"
  assumes hA : "A = {n::nat. 1 \<le> n \<and> n \<le> 2021 \<and> gcd n 2021 = 1}"
  and hS : "\<forall>j'::nat. S j' = (\<Sum>n\<in>A. n^j')"
  shows "(2021 dvd (S j)) \<longleftrightarrow> j \<in> putnam_2021_a5_solution"
  sorry

definition putnam_2021_a6_solution :: bool where "putnam_2021_a6_solution \<equiv> undefined"
(* True *)
theorem putnam_2021_a6:
  fixes Pcoeff :: "int poly \<Rightarrow> bool"
  and Pprod :: "int poly \<Rightarrow> bool"
  assumes hPcoeff: "\<forall>P::int poly. Pcoeff P = (\<forall>n::nat. coeff P n = 0 \<or> coeff P n = 1)"
  and hPprod: "\<forall>p::int poly. Pprod P = (\<exists>Q R::int poly. degree Q > 0 \<and> degree R > 0 \<and> P = Q * R)"
  shows "(\<forall>p::int poly. (Pcoeff P \<and> Pprod P) \<longrightarrow> (poly P 2 \<noteq> 0 \<and> poly P 2 \<noteq> 1 \<and> \<not>prime (poly P 2))) \<longleftrightarrow> putnam_2021_a6_solution"
  sorry

definition putnam_2021_b2_solution :: real where "putnam_2021_b2_solution \<equiv> undefined"
(* 2/3 *)
theorem putnam_2021_b2:
  fixes S :: "(nat \<Rightarrow> real) \<Rightarrow> real"
  and asum :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  assumes hS: "\<forall>a::nat\<Rightarrow>real. S a = (\<Sum>n::nat. ((n+1)/2^(n+1)) * (\<Prod>k::nat=0..n. a k) powr (1/(n+1)))"
  and hasum: "\<forall>a::nat\<Rightarrow>real. asum a = (\<forall>k::nat. a k \<ge> 0) \<and> (\<Sum>k::nat. a k) = 1"
  shows "(GREATEST Sa::real. (\<exists>a::nat\<Rightarrow>real. asum a \<and> S a = Sa)) = putnam_2021_b2_solution"
  sorry

(* uses (nat \<Rightarrow> real) instead of (Fin (2*n) \<Rightarrow> real) *)
definition putnam_2022_a6_solution :: "nat \<Rightarrow> nat" where "putnam_2022_a6_solution \<equiv> undefined"
(* (\<lambda>n::nat. n) *)
theorem putnam_2022_a6:
  fixes n :: nat
  and xlt :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  and mxsum :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
  and mexx :: "nat \<Rightarrow> bool"
  assumes npos: "n > 0"
  and hxlt: "\<forall>x::nat\<Rightarrow>real. xlt x = (-1 < x 1 \<and> (\<forall>i::nat\<in>{1..(2*n-1)}. x i < x (i + 1)) \<and> x (2*n) < 1)"
  and hmxsum: "\<forall>(m::nat)(x::nat\<Rightarrow>real). mxsum m x = (\<forall>k::nat\<in>{1..m}. ((\<Sum>i::nat=1..n. ((x (2*i))^(2*k-1) - (x (2*i-1))^(2*k-1))) = 1))"
  and hmexx: "\<forall>m::nat. mexx m = (\<exists>x::nat\<Rightarrow>real. xlt x \<and> mxsum m x)"
  shows "(GREATEST m::nat. mexx m) = putnam_2022_a6_solution n"
  sorry

theorem putnam_2022_b1:
  fixes n :: nat
  and P :: "real poly"
  and B :: "real poly"
  assumes npos: "n \<ge> 1"
  and Pconst: "coeff P 0 = 0"
  and Pdegree: "degree P = n"
  and Pint: "\<forall>k::nat\<in>{1..n}. coeff P k = round (coeff P k)"
  and podd: "odd (round (coeff P 1))"
  and hB: "\<forall>x::real. exp (poly P x) = poly B x"
  shows "\<forall>k::nat. coeff B k \<noteq> 0"
  sorry

definition putnam_2022_b2_solution :: "nat set" where "putnam_2022_b2_solution \<equiv> undefined"
(* {1, 7} *)
theorem putnam_2022_b2:
  fixes n :: nat
  and Scross :: "(real^3) set \<Rightarrow> bool"
  assumes hScross: "\<forall>S::(real^3) set. Scross S = (S = {u::real^3. (\<exists>v\<in>S. \<exists>w\<in>S. u = cross3 v w)})"
  shows "(n > 0 \<and> (\<exists>S::(real^3) set. finite S \<and> card S = n \<and> Scross S)) \<longleftrightarrow> n \<in> putnam_2022_b2_solution"
  sorry

(* uses (nat \<Rightarrow> real) instead of (Fin n \<Rightarrow> real) *)
definition putnam_2022_b4_solution :: "nat set" where "putnam_2022_b4_solution \<equiv> undefined"
(* {n::nat. 3 dvd n \<and> n \<ge> 9} *)
theorem putnam_2022_b4:
  fixes n :: nat
  and ap3 :: "real \<Rightarrow> real \<Rightarrow> real \<Rightarrow> bool"
  and xprog :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  assumes hap3: "\<forall>x0 x1 x2::real. ap3 x0 x1 x2 = (\<forall>o0 o1 o2::real. (o0 < o1 \<and> o1 < o2 \<and> {o0, o1, o2} = {x0, x1, x2}) \<longrightarrow> (o1 - o0 = o2 - o1))"
  and hxprog: "\<forall>x::nat\<Rightarrow>real. xprog x = ((\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. i \<noteq> j \<longrightarrow> x i \<noteq> x j) \<and> (\<forall>i::nat\<in>{0..(n-1)}. ap3 (x i) (x ((i + 1) mod n)) (x ((i + 2) mod n))))"
  shows "(n \<ge> 4 \<and> (\<exists>x::nat\<Rightarrow>real. xprog x)) \<longleftrightarrow> n \<in> putnam_2022_b4_solution"
  sorry

(* uses (real \<Rightarrow> real) instead of (Set.Ioi (0::real) \<Rightarrow> Set.Ioi (0::real)) *)
definition putnam_2022_b6_solution :: "(real \<Rightarrow> real) set" where "putnam_2022_b6_solution \<equiv> undefined"
(* {f::real\<Rightarrow>real. (\<exists>c::real. c \<ge> 0 \<and> (\<forall>x::real>0. f x = 1/(1+c*x)))} *)
theorem putnam_2022_b6:
  fixes f :: "real \<Rightarrow> real"
  and eq :: bool
  assumes heq: "eq = (\<forall>x::real>0. \<forall>y::real>0. f (x*f y) + f (y*f x) = 1 + f (x+y))"
  shows "(continuous_on {0<..} f \<and> eq) \<longleftrightarrow> f \<in> putnam_2022_b6_solution"
  sorry

(* uses (nat \<Rightarrow> real) instead of (Fin (n+1) \<Rightarrow> real) and (real \<Rightarrow> real) instead of (Set.Ici (ts 0) \<Rightarrow> real) *)
definition putnam_2023_b4_solution :: real where "putnam_2023_b4_solution \<equiv> undefined"
(* 29 *)
theorem putnam_2023_b4:
  fixes tne :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> real set"
  and fdiff :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and flim :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fderiv1 :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fderiv2 :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and fall :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real) \<Rightarrow> bool"
  and tinc :: "nat \<Rightarrow> (nat \<Rightarrow> real) \<Rightarrow> bool"
  and Tall :: "real \<Rightarrow> bool"
  assumes htne: "\<forall>(n::nat)(ts::nat\<Rightarrow>real). tne n ts = {t::real. t > ts 0 \<and> (\<forall>i::nat\<in>{1..n}. t \<noteq> ts i)}"
  and hfdiff: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fdiff n ts f = (continuous_on {(ts 0)..} f \<and> f C1_differentiable_on (tne n ts) \<and> (deriv f) differentiable_on (tne n ts))"
  and hflim: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). flim n ts f = (\<forall>k::nat\<in>{0..n}. filterlim (deriv f) (nhds 0) (at_right (ts k)))"
  and hfderiv1: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fderiv1 n ts f = (\<forall>k::nat\<in>{0..(n-1)}. \<forall>t::real\<in>{(ts k)<..<(ts (k+1))}. (deriv^^2) f t = k+1)"
  and hfderiv2: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fderiv2 n ts f = (\<forall>t::real>(ts n). (deriv^^2) f t = n+1)"
  and hfall: "\<forall>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). fall n ts f = (fdiff n ts f \<and> f (ts 0) = 0.5 \<and> flim n ts f \<and> fderiv1 n ts f \<and> fderiv2 n ts f)"
  and htinc: "\<forall>(n::nat)(ts::nat\<Rightarrow>real). tinc n ts = (\<forall>k::nat\<in>{0..(n-1)}. ts (k+1) \<ge> ts k + 1)"
  and hTall: "\<forall>T::real. Tall T = (T \<ge> 0 \<and> (\<exists>(n::nat)(ts::nat\<Rightarrow>real)(f::real\<Rightarrow>real). tinc n ts \<and> fall n ts f \<and> f (ts 0 + T) = 2023))"
  shows "(LEAST T::real. Tall T) = putnam_2023_b4_solution"
  sorry

definition putnam_2023_b5_solution :: "nat set" where "putnam_2023_b5_solution \<equiv> undefined"
(* {n::nat. n = 1 \<or> [n = 2] (mod 4)} *)
theorem putnam_2023_b5:
  fixes n :: nat
  and perm :: bool
  assumes hperm: "perm = (\<forall>m::int. coprime m n \<longrightarrow> (\<exists>p::nat\<Rightarrow>nat. p permutes {1..n} \<and> (\<forall>k::nat\<in>{1..n}. [p (p k) = m*k] (mod n))))"
  shows "(n > 0 \<and> perm) \<longleftrightarrow> n \<in> putnam_2023_b5_solution"
  sorry

(* uses (nat \<Rightarrow> 'n) instead of (Fin n \<Rightarrow> 'n) *)
definition putnam_2023_b6_solution :: "nat \<Rightarrow> int" where "putnam_2023_b6_solution \<equiv> undefined"
(* (\<lambda>n::nat. (-1)^(nat (\<lceil>n/2\<rceil>-1)) * 2 * \<lceil>n/2\<rceil>) *)
theorem putnam_2023_b6:
  fixes n :: nat
  and S :: "int^'n^'n"
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hS: "\<exists>pnind::nat\<Rightarrow>'n. (pnind ` {0..(n-1)} = UNIV \<and> (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. S$(pnind i)$(pnind j) = card {(a::nat,b::nat). a*(i+1) + b*(j+1) = n}))"
  shows "det S = putnam_2023_b6_solution n"
  sorry

end
