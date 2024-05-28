theory putnam_1972_a1 imports Complex_Main
begin

theorem putnam_1972_a1:
  fixes n :: nat
  and fourAP :: "nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> bool"
  assumes hn: "n > 0"
  defines "fourAP \<equiv> (\<lambda>n1 n2 n3 n4::nat. n4-n3 = n3-n2 \<and> n3-n2 = n2-n1)"
  shows "\<not>(\<exists>r::nat. r > 0 \<and> r + 3 \<le> n \<and> fourAP (n choose r) (n choose (r+1)) (n choose (r+2)) (n choose (r+3)))"
  sorry

end
