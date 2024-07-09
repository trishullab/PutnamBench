theory putnam_1975_a3 imports Complex_Main
begin

definition putnam_1975_a3_solution::"(real\<Rightarrow>real\<Rightarrow>real\<Rightarrow>(real\<times>real\<times>real))\<times>(real\<Rightarrow>real\<Rightarrow>real\<Rightarrow>(real\<times>real\<times>real))" where "putnam_1975_a3_solution \<equiv> undefined"
(* ( \<lambda>a b c. ((a/b) powr (1/(b-a)), (1 - ((a/b) powr (1/(b-a))) powr b) powr (1/b), 0),
    \<lambda>a b c. (0, (1 - ((b/c) powr (1/(c-b))) powr b) powr (1/b), (b/c) powr (1/(c-b))) ) *)
theorem putnam_1975_a3:
  fixes a b c::real and P::"real\<times>real\<times>real\<Rightarrow>bool" and f::"real\<times>real\<times>real\<Rightarrow>real"
  defines "P \<equiv> \<lambda>(x, y, z). x \<ge> 0 \<and> y \<ge> 0 \<and> z \<ge> 0 \<and> x powr b + y powr b + z powr b = 1"
    and "f \<equiv> \<lambda>(x, y, z). x powr a + y powr b + z powr c"
  assumes hi : "0 < a \<and> a < b \<and> b < c"
  shows "(P ((fst putnam_1975_a3_solution) a b c) \<and> (\<forall>x y z::real. P (x, y, z) \<longrightarrow> f (x,y,z) \<le> f ((fst putnam_1975_a3_solution) a b c))) \<and>
    (P ((snd putnam_1975_a3_solution) a b c) \<and> (\<forall>x y z::real. P (x, y, z) \<longrightarrow> f (x,y,z) \<ge> f ((snd putnam_1975_a3_solution) a b c)))"
  sorry

end