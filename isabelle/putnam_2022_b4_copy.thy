theory putnam_2022_b4 imports Complex_Main
begin

(* uses (nat \<Rightarrow> real) instead of (Fin n \<Rightarrow> real) *)
theorem putnam_2022_b4:
  fixes n :: nat
  and ap3 :: "real \<Rightarrow> real \<Rightarrow> real \<Rightarrow> bool"
  and xprog :: "(nat \<Rightarrow> real) \<Rightarrow> bool"
  assumes hap3: "\<forall>x0 x1 x2::real. ap3 x0 x1 x2 = (\<forall>o0 o1 o2::real. (o0 < o1 \<and> o1 < o2 \<and> {o0, o1, o2} = {x0, x1, x2}) \<longrightarrow> (o1 - o0 = o2 - o1))"
  and hxprog: "\<forall>x::nat\<Rightarrow>real. xprog x = ((\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. i \<noteq> j \<longrightarrow> x i \<noteq> x j) \<and> (\<forall>i::nat\<in>{0..(n-1)}. ap3 (x i) (x ((i + 1) mod n)) (x ((i + 2) mod n))))"
  shows "(n \<ge> 4 \<and> (\<exists>x::nat\<Rightarrow>real. xprog x)) \<longleftrightarrow> n \<in> ( {n::nat. 3 dvd n \<and> n \<ge> 9} )"
  sorry

end
