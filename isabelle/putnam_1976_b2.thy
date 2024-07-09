theory putnam_1976_b2 imports Complex_Main
"HOL-Algebra.Group"
begin

definition putnam_1976_b2_solution :: "nat \<times> (((nat \<times> nat) list) set)" where
"putnam_1976_b2_solution \<equiv> undefined"
(* (8, {[(0,0)], [(2, 0)], [(0, 1)], [(0, 2)], [(0, 3)], [(0, 4)], [(0, 5)], [(0, 6)]}) *)
theorem putnam_1976_b2:
  fixes G (structure)
    and A B :: "'a"
    and word :: "(int \<times> int) list \<Rightarrow> 'a"
    and S :: "'a set"
  defines "word \<equiv> \<lambda> w. foldr (\<lambda> y z. (A[^](fst y) \<otimes>\<^bsub>G\<^esub> A[^](snd y)) \<otimes>\<^bsub>G\<^esub> z) w \<one>\<^bsub>G\<^esub>"
    and "S \<equiv> {g :: 'a. g \<in> carrier G \<and> (\<exists> C \<in> carrier G. C[^]2 = g)}"
  assumes hAB : "A \<in> carrier G \<and> B \<in> carrier G"
    and hA : "A[^]4 = \<one>\<^bsub>G\<^esub> \<and> A[^]2 \<noteq> \<one>\<^bsub>G\<^esub>"
    and hB : "B[^]7 = \<one>\<^bsub>G\<^esub> \<and> B \<noteq> \<one>\<^bsub>G\<^esub>"
    and h1 : "A \<otimes>\<^bsub>G\<^esub> B \<otimes>\<^bsub>G\<^esub> (inv A) \<otimes>\<^bsub>G\<^esub> B =  \<one>\<^bsub>G\<^esub>"
    and hG : "\<forall> g \<in> carrier G. \<exists> w :: (int \<times> int) list. g = word w"
  shows " card S = fst putnam_1976_b2_solution \<and> S = {g :: 'a. \<exists> w \<in> (snd putnam_1976_b2_solution). g = word w}"
  sorry

end