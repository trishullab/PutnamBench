theory putnam_2012_a1 imports
Complex_Main
begin

(* Notes: This formalization uses "nat" instead of a finite domain for d and manually checks a condition for acuteness based on side lengths. *)
theorem putnam_2012_a1:
  fixes d :: "nat \<Rightarrow> real"
  assumes hd: "\<forall> i < 12. d i \<in> {1 <..< 12}"
  shows "\<exists> i j k :: nat. i < 12 \<and> j < 12 \<and> k < 12 \<and> i \<noteq> j \<and> i \<noteq> k \<and> j \<noteq> k \<and> d k \<ge> d i \<and> d k \<ge> d j \<and> (d i) ^ 2 + (d j) ^ 2 > (d k) ^ 2"
  sorry

end