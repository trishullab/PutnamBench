theory putnam_1991_a6 imports
Complex_Main
begin

(* uses (nat \<rightarrow> nat) instead of (Fin r \<rightarrow> nat) and (Fin s \<rightarrow> nat) *)
theorem putnam_1991_a6:
  fixes nabsum :: "nat \<Rightarrow> nat \<times> (nat \<Rightarrow> nat) \<Rightarrow> bool"
  and agt :: "nat \<times> (nat \<Rightarrow> nat) \<Rightarrow> bool"
  and A :: "nat \<Rightarrow> nat"
  and bge :: "nat \<times> (nat \<Rightarrow> nat) \<Rightarrow> bool"
  and g :: "nat \<Rightarrow> nat"
  and bg1 :: "nat \<times> (nat \<Rightarrow> nat) \<Rightarrow> bool"
  and bg2 :: "nat \<times> (nat \<Rightarrow> nat) \<Rightarrow> bool"
  and B :: "nat \<Rightarrow> nat"
  defines "nabsum \<equiv> \<lambda> (n :: nat) (ab :: nat \<times> (nat \<Rightarrow> nat)). (fst ab) \<ge> 1 \<and> (\<forall> i < fst ab. (snd ab) i > 0) \<and> (\<forall> i \<ge> fst ab. (snd ab) i = 0) \<and> (\<Sum> i = 0 .. fst ab - 1. (snd ab) i) = n"
  and "agt \<equiv> \<lambda> a :: nat \<times> (nat \<Rightarrow> nat). (\<forall> i \<in> {0 .. fst a - 3}. (snd a) i > (snd a) (i + 1) + (snd a) (i + 2)) \<and> (snd a) (fst a - 2) > (snd a) (fst a - 1)"
  and "A \<equiv> \<lambda> n :: nat. card {a :: nat \<times> (nat \<Rightarrow> nat). nabsum n a \<and> agt a}"
  and "bge \<equiv> \<lambda> b :: nat \<times> (nat \<Rightarrow> nat). \<forall> i \<in> {0 .. fst b - 2}. (snd b) i \<ge> (snd b) (i + 1)"
  and "bg1 \<equiv> \<lambda> b :: nat \<times> (nat \<Rightarrow> nat). \<forall> i \<in> {0 .. fst b - 1}. \<exists> j :: nat. (snd b) i = g j"
  and "bg2 \<equiv> \<lambda> b :: nat \<times> (nat \<Rightarrow> nat). \<exists> k :: nat. (snd b) 0 = g k \<and> (\<forall> j \<le> k. \<exists> i \<in> {0 .. fst b - 1}. (snd b) i = g j)"
  and "B \<equiv> \<lambda> n :: nat. card {b :: nat \<times> (nat \<Rightarrow> nat). nabsum n b \<and> bge b \<and> bg1 b \<and> bg2 b}"
  assumes hg: "g 0 = 1 \<and> g 1 = 2 \<and> (\<forall> j \<ge> 2. g j = g (j - 1) + g (j - 2) + 1)"
  shows "\<forall> n \<ge> 1. A n = B n"
  sorry
  
end