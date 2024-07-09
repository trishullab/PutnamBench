theory Batch9 imports Complex_Main "HOL-Analysis.Analysis" "HOL-Algebra.Multiplicative_Group" 
begin

definition putnam_2017_b6_solution::nat where "putnam_2017_b6_solution \<equiv> undefined"
(* 2016! / 1953! - 63! * 2016 *)
theorem putnam_2017_b6:
  fixes S::"(nat list) set"
  defines "S \<equiv> {x. (size x = 64)
                    \<and> (\<forall>i\<in>{0..63}. x!i \<ge> 1 \<and> x!i \<le> 2017)
                    \<and> (\<forall>i\<in>{0..63}. \<forall>j\<in>{0..63}. x!i = x!j \<longrightarrow> i = j)
                    \<and> (2017 dvd  (x!0 + (\<Sum>i=1..63. (i * x!i))))}"
  shows "card S = putnam_2017_b6_solution"
  sorry

definition putnam_2016_a3_solution::real where "putnam_2016_a3_solution \<equiv> undefined"
(* 3 * pi / 8 *)
theorem putnam_2016_a3:
  fixes f::"real\<Rightarrow>real"
  assumes hf : "\<forall>x. x \<noteq> 0 \<longrightarrow> f x + f (1 - 1 / x) = arctan x"
  shows "set_lebesgue_integral lebesgue {0..1} f = putnam_2016_a3_solution"
  sorry

theorem putnam_2016_a5:
  fixes G (structure) and g h::"'a" and S::"'a set"
  defines "S \<equiv> {g \<otimes> h, inv g \<otimes> h, g \<otimes> inv h, inv g \<otimes> inv h}"
  assumes hG : "Group.group G \<and> finite (carrier G)"
    and ghgen : "generate G {h, g} = carrier G \<and> generate G {h} \<noteq> carrier G \<and> generate G {g} \<noteq> carrier G"
    and godd : "odd ( (group.ord G) g)"
  shows "\<forall>x \<in> carrier G. \<exists> mn::'a list. \<forall>i\<in>{0..<card (carrier G)}. size mn \<ge> 1 \<and> size mn \<le> card (carrier G)
    \<and> mn!i \<in> S \<and> x = foldr (\<otimes>\<^bsub>G\<^esub>) mn \<one>"
  sorry


definition is_square::"int\<Rightarrow>bool" where "is_square n \<equiv> \<exists>x::nat. n = x * x"
definition squarish::"int\<Rightarrow>bool" where "squarish n \<equiv> is_square n \<or>
   (\<exists>w::int. is_square (abs (n - w * w)) \<and> (\<forall>v::nat. abs (n - w * w) \<le> abs (n - v * v)))"

definition putnam_2016_b2_solution::"(real \<times> real)" where "putnam_2016_b2_solution \<equiv> undefined"
(* (3/4, 4/3) *)
theorem putnam_2016_b2:
  fixes S::"nat\<Rightarrow>nat" and p::"real\<Rightarrow>real\<Rightarrow>bool"
  defines "S \<equiv> \<lambda>n::nat. card {i \<in> {1..n}. squarish i}"
    and "p \<equiv> \<lambda>a::real. \<lambda>b::real. a > 0 \<and> b > 0 \<and> ((\<lambda>n. S n / (n powr a)) \<longlonglongrightarrow>  b)"
  shows "(\<forall>a b::real. (a, b) = putnam_2016_b2_solution \<longleftrightarrow> p a b) \<or> (\<forall>a b::real. \<not> (p a b))"
  sorry

definition putnam_2015_a4_solution::real where "putnam_2015_a4_solution \<equiv> undefined"
(* 4/7 *)
theorem putnam_2015_a4:
  fixes S::"real\<Rightarrow>(nat set)" and f::"real\<Rightarrow>real" and p::"real\<Rightarrow>bool"
  defines "S \<equiv> \<lambda>x::real. {n::nat. n > 0 \<and> even (\<lfloor>n * x\<rfloor>)}"
    and "f \<equiv> \<lambda>x::real. \<Sum>\<^sub>\<infinity>n \<in> S x. 1 / (2 ^ n)"
  shows "putnam_2015_a4_solution = (GREATEST l::real. \<forall>x \<in> {0..<1}. f x \<ge> l)"
  sorry

definition putnam_2015_b5_solution::nat where "putnam_2015_b5_solution \<equiv> undefined"
(* 4 *)
theorem putnam_2015_b5:
  fixes P::"nat\<Rightarrow>nat"
  defines "P \<equiv> \<lambda>n. card ({pi::nat\<Rightarrow>nat. pi permutes {1..n} \<and> (\<forall>i\<in>{1..n}. \<forall>j\<in>{1..n}. abs(i - j) = 1 \<longrightarrow> abs(pi i - pi j) \<le> 2)})"
  shows "\<forall>n::nat \<ge> 2. P (n+5) - P (n+4) - P(n+3) + P n = putnam_2015_b5_solution"
  sorry


(* NOTE: this formalization differs from the original problem wording in only allowing axis-aligned rectangles.
The problem is solvable given this weaker hypothesis. *)
definition putnam_2012_a6_solution::bool where "putnam_2012_a6_solution \<equiv> undefined"
(* True *)
theorem putnam_2012_a6:
  fixes p::"((real \<times> real) \<Rightarrow> real) \<Rightarrow> bool"
  defines "p \<equiv> \<lambda>f. continuous_on UNIV f \<and> (\<forall>x1 x2 y1 y2::real. x2 > x1 \<longrightarrow> y2 > y1 \<longrightarrow> (x2 - x1) * (y2 - y1) = 1
    \<longrightarrow>  (set_lebesgue_integral lebesgue {(x, y). x \<ge> x1 \<and> x \<le> x2 \<and> y \<ge> y1 \<and> y \<le> y2} f = 0))"
  shows "(\<forall>f::(real \<times> real) \<Rightarrow> real. \<forall>x y ::real. p f \<longrightarrow> f (x, y) = 0) \<longleftrightarrow> putnam_2012_a6_solution"
  sorry

(* NOTE: Isabelle doesn't support restricted domains, so we have to get around this by treating functions as products *)
theorem putnam_2012_b1:
  fixes S::"((real\<times>real) set) set"
  assumes f1 : "{(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> y = exp x - 1} \<in> S"
    and f2 : "{(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> y = ln (x+1) } \<in> S"
    and hsum : "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys + yt)} \<in> S"
    and hcomp : "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> ys = xt \<longrightarrow> y = yt)} \<in> S"
    and hdiff : "\<forall>s \<in> S. \<forall>t \<in> S. (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. xs = xt \<longrightarrow> ys \<ge> yt) \<longrightarrow> 
                        {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys - yt)} \<in> S"
  shows "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys * yt)} \<in> S"
  sorry

definition putnam_2012_b4_solution::bool where "putnam_2012_b4_solution \<equiv> undefined"
(* True *)
theorem putnam_2012_b4:
  fixes a::"nat\<Rightarrow>real"
  assumes ha0 : "a 0 = 1"
    and han : "\<forall>n::nat. a (n+1) = a n + exp (-a n)"
  shows "(convergent (\<lambda>n. a n - ln n)) \<longleftrightarrow> putnam_2012_b4_solution"
  sorry

end