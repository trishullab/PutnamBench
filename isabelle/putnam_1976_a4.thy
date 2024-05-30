theory putnam_1976_a4 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1976_a4_solution :: "(real \<Rightarrow> real) \<times> (real \<Rightarrow> real)" where
"putnam_1976_a4_solution \<equiv> (\<lambda> r :: real. -1/(r + 1), \<lambda> r :: real. -(r+1)/r)"
theorem putnam_1976_a4_solution:
  fixes a b c d :: "int"
    and r :: "real"
    and P Q :: "rat poly"
  defines "P \<equiv> [: -1, rat_of_int b, rat_of_int a, 1 :]"
    and "Q \<equiv> [: 1, rat_of_int d, rat_of_int c, 1 :]"
  assumes hP : "poly (map_poly of_rat P) r = 0 \<and> irreducible P"
    and hQ : "poly (map_poly of_rat Q) (r+1) = 0"
  shows "\<exists> s :: real. poly (map_poly of_rat P) s = 0 \<and> (s = (fst putnam_1976_a4_solution) r \<or> s = (snd putnam_1976_a4_solution) r)"
  sorry

end