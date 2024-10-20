theory putnam_1984_a6 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_1984_a6_solution :: "bool \<times> nat" where "putnam_1984_a6_solution \<equiv> undefined"
(* (True, 4) *)
theorem putnam_1984_a6:
  fixes f :: "nat \<Rightarrow> nat"
    and kadistinct :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> bool"
    and gpeq :: "(nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
  defines "kadistinct \<equiv> \<lambda> (k :: nat) (a :: nat \<Rightarrow> nat). k \<ge> 1 \<and> (\<forall> i j :: nat. (i < k \<and> j < k \<and> i \<noteq> j) \<longrightarrow> a i \<noteq> a j)"
    and "gpeq \<equiv> \<lambda> (g :: nat \<Rightarrow> nat) (p :: nat). p > 0 \<and> (\<forall> (s :: nat) \<ge> 1. g s = g (s + p))"
  assumes hf : "\<forall> n > 0. f n = (if [fact n \<noteq> 0] (mod 10) then ((fact n) mod 10) else f ((fact n) div 10))" 
  shows "let (b, n) = putnam_1984_a6_solution in \<exists> g :: nat \<Rightarrow> nat. 
(\<forall> (k :: nat) (a :: nat \<Rightarrow> nat). kadistinct k a \<longrightarrow> g (\<Sum> i=0..(k-1). a i) = f (\<Sum> i=0..(k-1). 5^(a i)))
\<and> (if b then gpeq g n \<and> (\<forall> p :: nat. gpeq g p \<longrightarrow> p \<ge> n) else \<not>(\<exists> p :: nat. gpeq g p))"
  sorry

end