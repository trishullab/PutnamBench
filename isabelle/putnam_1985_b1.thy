theory putnam_1985_b1 imports Complex_Main 
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1985_b1_solution :: "int \<times> int \<times> int \<times> int \<times> int" where "putnam_1985_b1_solution \<equiv> undefined"
(* (-2, -1, 0, 1, 2) *)
theorem putnam_1985_b1:
  fixes p :: "int \<Rightarrow> int \<Rightarrow> int \<Rightarrow> int \<Rightarrow> int \<Rightarrow> (real poly)"
    and numnzcoeff :: "(real poly) \<Rightarrow> nat"
  defines "p \<equiv> \<lambda> m1 m2 m3 m4 m5. [: -m1, 1 :] * [: -m2, 1 :] * [: -m3, 1 :] * [: -m4, 1 :] * [: -m5, 1 :]"
    and "numnzcoeff \<equiv> \<lambda> P :: real poly. card {j::nat. j \<le> degree P \<and> coeff P j \<noteq> 0}"
  shows "let (m1, m2, m3, m4, m5) = putnam_1985_b1_solution in ((card {m1, m2, m3, m4, m5} = 5) \<and>
    (\<forall> m. let (a, b, c, d, e) = m in (card {a, b, c, d, e} = 5 \<longrightarrow> numnzcoeff (p m1 m2 m3 m4 m5) \<le> numnzcoeff (p a b c d e))))"
  sorry

end