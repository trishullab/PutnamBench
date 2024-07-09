theory putnam_2005_b6 imports Complex_Main
"HOL-Combinatorics.Permutations"
begin

theorem putnam_2005_b6:
  fixes n::nat and S::"(nat\<Rightarrow>nat) set" and \<sigma>::"(nat\<Rightarrow>nat) \<Rightarrow> int" and v::"(nat\<Rightarrow>nat) \<Rightarrow> int" 
  defines "S \<equiv> {p. p permutes {1..n}}"
    and "\<sigma> \<equiv> \<lambda>p. if (evenperm p) then 1 else -1"
    and "v \<equiv> \<lambda>p. card {x::nat. x > 0 \<and> x \<le> n \<and> p x = x}"
  assumes npos : "n > 0"
  shows "(\<Sum>p \<in> S. rat_of_int (\<sigma> p) / (rat_of_int (v p) + 1)) = (-1)^(n+1) * (rat_of_nat n) / (rat_of_nat n+1)"
  sorry

end
