theory putnam_2012_b3 imports
Complex_Main
begin

(* Note: This formalization uses "nat" instead of finite types for the domains of many functions. *)
definition putnam_2012_b3_solution :: bool where "putnam_2012_b3_solution \<equiv> undefined"
(* True *)
theorem putnam_2012_b3:
  fixes nmatchupsgames :: "nat \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> nat)) \<Rightarrow> bool"
  and nmatchupsall :: "nat \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> nat)) \<Rightarrow> bool"
  and nmatchupswins :: "nat \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> nat)) \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> bool)) \<Rightarrow> bool"
  and nmatchupswinschoices :: "nat \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> nat)) \<Rightarrow> (nat \<Rightarrow> (nat \<Rightarrow> bool)) \<Rightarrow> bool"
  defines "nmatchupsgames \<equiv> \<lambda> (n :: nat) (matchups :: nat \<Rightarrow> (nat \<Rightarrow> nat)). \<forall> d < 2 * n - 1. \<forall> t < 2 * n. matchups d t < 2 * n \<and> matchups d t \<noteq> t \<and> matchups d (matchups d t) = t"
  and "nmatchupsall \<equiv> \<lambda> (n :: nat) (matchups :: nat \<Rightarrow> (nat \<Rightarrow> nat)). \<forall> t1 < 2 * n. \<forall> t2 < 2 * n. t1 \<noteq> t2 \<longrightarrow> (\<exists> d < 2 * n - 1. matchups d t1 = t2)"
  and "nmatchupswins \<equiv> \<lambda> (n :: nat) (matchups :: nat \<Rightarrow> (nat \<Rightarrow> nat)) (wins :: nat \<Rightarrow> (nat \<Rightarrow> bool)). \<forall> d < 2 * n - 1. \<forall> t < 2 * n. wins d t = (\<not>wins d (matchups d t))"
  and "nmatchupswinschoices \<equiv> \<lambda> (n :: nat) (matchups :: nat \<Rightarrow> (nat \<Rightarrow> nat)) (wins :: nat \<Rightarrow> (nat \<Rightarrow> bool)). \<exists> choices :: nat \<Rightarrow> nat. (\<forall> d < 2 * n - 1. choices d < 2 * n \<and> wins d (choices d) \<and> inj_on choices {0 ..< 2 * n - 1})"
  shows "(\<forall> n \<ge> 1. \<forall> (matchups :: nat \<Rightarrow> (nat \<Rightarrow> nat)) (wins :: nat \<Rightarrow> (nat \<Rightarrow> bool)). (nmatchupsgames n matchups \<and> nmatchupsall n matchups \<and> nmatchupswins n matchups wins) \<longrightarrow> nmatchupswinschoices n matchups wins) \<longleftrightarrow> putnam_2012_b3_solution"
  sorry

end