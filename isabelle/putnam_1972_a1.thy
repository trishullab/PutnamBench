theory putnam_1972_a1 imports Complex_Main
begin

theorem putnam_1972_a1:
  fixes n :: nat
  and fourAP :: "nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> bool"
  assumes hn: "n > 0"
  defines "fourAP \<equiv> (\<lambda>n1 n2 n3 n4::nat. (\<exists>o1 o2 o3 o4::nat. {n1,n2,n3,n4} = {o1,o2,o3,o4} \<and> o1 \<le> o2 \<and> o2 \<le> o3 \<and> o3 \<le> o4 \<and> o4-o3 = o3-o2 \<and> o3-o2 = o2-o1))"
  shows "\<not>(\<exists>r::nat. r > 0 \<and> r + 3 \<le> n \<and> fourAP (n choose r) (n choose (r+1)) (n choose (r+2)) (n choose (r+3)))"
  sorry

end
