theory putnam_1995_a6 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

(* formalized with lists due to Isabelle's lack of support for variable-size matrices *) 
theorem putnam_1995_a6:
  fixes SM :: "nat \<Rightarrow> ((int^3) list) set"
    and Srowsums :: "(int^3) list \<Rightarrow> (int set)"
    and sumsprog :: "(int set) \<Rightarrow> bool"
  defines "SM \<equiv> \<lambda> n :: nat. {M :: (int^3) list. length M = n \<and> (\<forall> j \<in> {0..n-1}. {k :: int. \<exists> i :: 3. k = M!j$i} = {1, 2, 3})}"
    and "Srowsums \<equiv> \<lambda> M :: (int^3) list. {k :: int. \<exists> i :: 3. k = (\<Sum> j \<in> {0..(length M - 1)}. M!j$i)}"
    and "sumsprog \<equiv> \<lambda> s :: int set. card s = 3 \<and> (\<exists> a b c :: int. {a, b, c} = s \<and> b = a + 1 \<and> c = a + 2)"
  shows "\<exists> n \<ge> 1995. card {M \<in> SM n. sumsprog (Srowsums M)} \<ge> 4 * card {M \<in> SM n. card (Srowsums M) = 1}"
  sorry

end