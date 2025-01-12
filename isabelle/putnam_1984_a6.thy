theory putnam_1984_a6 imports Complex_Main
"HOL-Number_Theory.Cong"
begin

definition putnam_1984_a6_solution :: "nat" where "putnam_1984_a6_solution \<equiv> undefined"
(* 4 *)
theorem putnam_1984_a6:
  fixes f :: "nat \<Rightarrow> nat"
    and IsPeriodicFrom :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
    and P :: "nat \<Rightarrow> (nat \<Rightarrow> nat) \<Rightarrow> nat \<Rightarrow> bool"
  assumes hf : "\<forall> n > 0. f n = (if [fact n \<noteq> 0] (mod 10) then ((fact n) mod 10) else f ((fact n) div 10))"
    and P_def : "\<forall> x g p. P x g p \<longleftrightarrow> (if p = 0 then (\<forall> q > 0. \<not> IsPeriodicFrom x g q) else p = (LEAST q ::nat. 0 < q  \<and> IsPeriodicFrom x g q))"
    and IsPeriodicFrom_def : "\<forall> x f p. (IsPeriodicFrom x f p \<longleftrightarrow> (\<forall> (s :: nat) \<ge> x. f s = f (s + p)))"
  shows "\<exists> g :: nat \<Rightarrow> nat.
          (\<forall> (k :: nat) (a :: nat \<Rightarrow> nat). (k > 0 \<and> inj a) \<longrightarrow> (f (\<Sum> i=0..(k-1). 5^(a i)) = g (\<Sum> i=0..(k-1). a i)) \<and>
         P 1 g putnam_1984_a6_solution)"
  sorry

end