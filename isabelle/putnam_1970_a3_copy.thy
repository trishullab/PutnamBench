theory putnam_1970_a3 imports Complex_Main
begin

fun digits :: "nat \<Rightarrow> (nat list)" where
  "digits n = (if n < 10 then [n] else ([n mod 10::nat] @ digits (n div 10::nat)))"
theorem putnam_1970_a3:
  fixes L :: "nat \<Rightarrow> nat"
  assumes hL: "\<forall>n::nat. L n \<le> length (digits n) \<and>
  (\<forall>k::nat<(L n). (digits n)!k = (digits n)!0) \<and>
  (L n \<noteq> length (digits n) \<longrightarrow> (digits n)!(L n) \<noteq> (digits n)!0)"
  shows "(GREATEST d::nat. (\<exists>n::nat. (digits (n^2))!0 \<noteq> 0 \<and> d = L (n^2))) = fst ( (3, 1444) ) \<and>
  (LEAST m::nat. (\<exists>n::nat. n^2 = m) \<and> (digits m)!0 \<noteq> 0 \<and> L m = fst ( (3, 1444) )) = snd ( (3, 1444) )"
  sorry

end
