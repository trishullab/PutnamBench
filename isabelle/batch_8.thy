theory batch_8 imports Complex_Main
"HOL-Analysis.Set_Integral"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2012_a2:
  fixes Smul :: "'S \<Rightarrow> 'S \<Rightarrow> 'S" (infixl "\<^bold>*" 70)
  and a b c :: 'S
  assumes Smulasg: "abel_semigroup Smul"
  and hS: "\<forall>x y::'S. \<exists>z::'S. x \<^bold>* z = y"
  and habc: "a \<^bold>* c = b \<^bold>* c"
  shows "a = b"
  sorry

theorem putnam_2013_a6:
  fixes w :: "int \<Rightarrow> int \<Rightarrow> int"
  and A :: "((int \<times> int) set) \<Rightarrow> int"
  assumes hwn1: "w (-2) (-2) = -1 \<and> w 2 (-2) = -1 \<and> w (-2) 2 = -1 \<and> w 2 2 = -1"
  and hwn2: "w (-1) (-2) = -2 \<and> w 1 (-2) = -2 \<and> w (-2) (-1) = -2 \<and> w 2 (-1) = -2 \<and> w (-2) 1 = -2 \<and> w 2 1 = -2 \<and> w (-1) 2 = -2 \<and> w 1 2 = -2"
  and hw2: "w 0 (-2) = 2 \<and> w (-2) 0 = 2 \<and> w 2 0 = 2 \<and> w 0 2 = 2"
  and hw4: "w (-1) (-1) = 4 \<and> w 1 (-1) = 4 \<and> w (-1) 1 = 4 \<and> w 1 1 = 4"
  and hwn4: "w 0 (-1) = -4 \<and> w (-1) 0 = -4 \<and> w 1 0 = -4 \<and> w 0 1 = -4"
  and hw12: "w 0 0 = 12"
  and hw0: "\<forall>a b::int. (\<bar>a\<bar> > 2 \<or> \<bar>b\<bar> > 2) \<longrightarrow> w a b = 0"
  and hA: "\<forall>S::(int\<times>int) set. finite S \<longrightarrow> A S = (\<Sum>s\<in>S. \<Sum>s'\<in>S. w (fst s-fst s') (snd s-snd s'))"
  shows "\<forall>S::(int\<times>int) set. (finite S \<and> S \<noteq> {}) \<longrightarrow> A S > 0"
  sorry

definition putnam_2013_b1_solution :: int where "putnam_2013_b1_solution \<equiv> undefined"
(* -1 *)
theorem putnam_2013_b1:
  fixes c :: "nat \<Rightarrow> int"
  assumes hc1: "c 1 = 1"
  and hceven: "\<forall>n::nat. n > 0 \<longrightarrow> c (2*n) = c n"
  and hcodd: "\<forall>n::nat. n > 0 \<longrightarrow> c (2*n+1) = (-1)^n * c n"
  shows "(\<Sum>n::nat=1..2013. c n * c (n+2)) = putnam_2013_b1_solution"
  sorry

(* uses (real \<Rightarrow> real) instead of ({0..1} \<Rightarrow> real) *)
theorem putnam_2013_b4:
  fixes \<mu> :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and Var :: "(real \<Rightarrow> real) \<Rightarrow> real"
  and M :: "(real \<Rightarrow> real) \<Rightarrow> real"
  assumes h\<mu>: "\<forall>f::real\<Rightarrow>real. \<mu> f = set_lebesgue_integral lebesgue {0<..<1} f"
  and hVar: "\<forall>f::real\<Rightarrow>real. Var f = set_lebesgue_integral lebesgue {0<..<1} (\<lambda>x::real. (f x - \<mu> f)^2)"
  and hM: "\<forall>f::real\<Rightarrow>real. M f = (GREATEST y::real. (\<exists>x::real\<in>{0..1}. y = \<bar>f x\<bar>))"
  shows "\<forall>f g::real\<Rightarrow>real. (continuous_on {0..1} f \<and> continuous_on {0..1} g) \<longrightarrow> (Var (\<lambda>x::real. f x*g x) \<le> 2*Var f*(M g)^2 + 2*Var g*(M f)^2)"
  sorry

(* uses (nat \<Rightarrow> nat) instead of ({1..n} \<Rightarrow> {1..n}) *)
theorem putnam_2013_b5:
  fixes n :: nat
  and k :: nat
  and fiter :: "(nat \<Rightarrow> nat) \<Rightarrow> bool"
  assumes npos: "n \<ge> 1"
  and kinX: "k \<in> {1..n}"
  and hfiter: "\<forall>f::nat\<Rightarrow>nat. fiter f = (f ` {1..n} \<subseteq> {1..n} \<and> (\<forall>x::nat\<in>{1..n}. \<exists>j::nat. (f^^j) x \<le> k))"
  shows "card {f::nat\<Rightarrow>nat. fiter f} = k * n^(n-1)"
  sorry

theorem putnam_2017_a2:
  fixes Q :: "nat \<Rightarrow> real \<Rightarrow> real"
  assumes hQbase: "\<forall>x::real. Q 0 x = 1 \<and> Q 1 x = x"
  and hQn: "\<forall>n::nat>2. \<forall>x::real. Q n x = ((Q (n-1) x)^2 - 1) / Q (n-2) x"
  shows "\<forall>n::nat>0. \<exists>P::real poly. (\<forall>i::nat. coeff P i = round (coeff P i)) \<and> Q n = poly P"
  sorry

(* uses (real \<Rightarrow> real) instead of ({a..b} \<Rightarrow> {0<..}) *)
theorem putnam_2017_a3:
  fixes a b :: real
  and f g :: "real \<Rightarrow> real"
  and I :: "nat \<Rightarrow> real"
  assumes altb: "a < b"
  and fgcont: "continuous_on {a..b} f \<and> continuous_on {a..b} g"
  and fgimg: "f ` {a..b} \<subseteq> {0<..} \<and> g ` {a..b} \<subseteq> {0<..}"
  and fgint: "set_lebesgue_integral lebesgue {a<..<b} f = set_lebesgue_integral lebesgue {a<..<b} g"
  and fneg: "\<exists>x::real\<in>{a..b}. f x \<noteq> g x"
  and hI: "\<forall>n::nat>0. I n = set_lebesgue_integral lebesgue {a<..<b} (\<lambda>x::real. (f x)^(n+1) / (g x)^n)"
  shows "(\<forall>n::nat>0. I (n+1) > I n) \<and> filterlim I at_top at_top"
  sorry

(* uses (nat \<Rightarrow> nat) instead of ({1..n} \<Rightarrow> nat) *)
theorem putnam_2018_a4:
  fixes m n :: nat
  and a :: "nat \<Rightarrow> nat"
  and Gmul :: "'G \<Rightarrow> 'G \<Rightarrow> 'G" (infixl "\<^bold>*" 70)
  and Gunit :: 'G ("\<^bold>1")
  and Ginv :: "'G \<Rightarrow> 'G"
  and g h :: 'G
  and Gpow :: "'G \<Rightarrow> nat \<Rightarrow> 'G"
  and ghprodrec :: "nat \<Rightarrow> 'G"
  assumes mnpos: "m > 0 \<and> n > 0"
  and mngcd: "gcd m n = 1"
  and ha: "\<forall>k::nat\<in>{1..n}. (int (a k)) = \<lfloor>(real (m*k)) / n\<rfloor> - \<lfloor>(real (m*(k-1))) / n\<rfloor>"
  and Ggroup: "group Gmul Gunit Ginv"
  and hGpow: "\<forall>x::'G. Gpow x 0 = \<^bold>1 \<and> (\<forall>k::nat>0. Gpow x k = (Gpow x (k-1) \<^bold>* x))"
  and hghprodrec: "ghprodrec 0 = \<^bold>1 \<and> (\<forall>k::nat\<in>{1..n}. ghprodrec k = ghprodrec (k-1) \<^bold>* g \<^bold>* Gpow h (a k))"
  and ghprod: "ghprodrec n = \<^bold>1"
  shows "g \<^bold>* h = h \<^bold>* g"
  sorry

definition putnam_2018_b1_solution :: "(int^2) set" where "putnam_2018_b1_solution \<equiv> undefined"
(* {v::int^2. (\<exists>b::int. b \<in> {0..100} \<and> even b \<and> v = vector [1, b])} *)
theorem putnam_2018_b1:
  fixes P :: "(int^2) set"
  and v :: "int^2"
  and vinP :: bool
  and Pvpart :: bool
  assumes hP: "P \<equiv> {v'::int^2. v'$1 \<in> {0..2} \<and> v'$2 \<in> {0..100}}"
  and hvinP: "vinP \<equiv> (v \<in> P)"
  and hPvpart: "Pvpart = (\<exists>Q R::(int^2) set. (partition_on (P - {v}) {Q, R}) \<and> card Q = card R \<and> (\<Sum>q\<in>Q. q) = (\<Sum>r\<in>R. r))"
  shows "(vinP \<and> Pvpart) \<longleftrightarrow> v \<in> putnam_2018_b1_solution"
  sorry

(* uses (nat \<Rightarrow> nat) instead of (Fin 2018 \<Rightarrow> nat) *)
theorem putnam_2018_b6:
  fixes S :: "(nat \<Rightarrow> nat) set"
  assumes hS: "S \<equiv> {s::nat\<Rightarrow>nat. (\<forall>i::nat\<in>{0..2017}. s i \<in> {1,2,3,4,5,6,10}) \<and> (\<Sum>i::nat=0..2017. s i) = 3860}"
  shows "card S \<le> 2^3860 * (2018/2048)^2018"
  sorry

end
