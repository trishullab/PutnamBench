theory putnam_1975_b4 imports Complex_Main
begin

theorem putnam_1975_b4:
  fixes P::"real\<Rightarrow>real\<Rightarrow>bool"
  defines "P \<equiv> \<lambda>x. \<lambda>y. x^2 + y^2 = 1"
  shows "(\<exists>B. B \<subseteq> {(x, y). P x y} \<and> closed B \<and> (\<forall> x y::real. P x y \<longrightarrow> (((x, y) \<in> B) \<noteq> ((-x, -y) \<in> B)))) \<longleftrightarrow> ( False )"
  sorry

end