theory putnam_2011_a4 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Infinite_Sum"
begin

(* uses (nat \<Rightarrow> 'n) instead of (Fin n \<Rightarrow> 'n) *)
theorem putnam_2011_a4:
  fixes n :: nat
  and intinner :: "int^'n \<Rightarrow> int^'n \<Rightarrow> int"
  and nmat :: bool
  assumes npos: "n > 0"
  and pncard: "CARD('n) = n"
  and hintinner2: "\<forall>u v::int^'n. intinner u v = (\<Sum>\<^sub>\<infinity>i::'n. u$i * v$i)"
  and hnmat: "\<exists>A::int^'n^'n. (\<forall>r::'n. even (intinner (row r A) (row r A))) \<and> (\<forall>r1 r2::'n. r1 \<noteq> r2 \<longrightarrow> odd (intinner (row r1 A) (row r2 A)))"
  shows "nmat \<longleftrightarrow> n \<in> ( {n::nat. odd n} )"
  sorry

end
