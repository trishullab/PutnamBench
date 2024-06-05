theory putnam_2003_b4 imports Complex_Main
begin

theorem putnam_2003_b4:
  fixes f::"real\<Rightarrow>real" and a b c d e::int and r1 r2 r3 r4::real
  defines "f \<equiv> \<lambda>z::real. a * z^4 + b * z^3 + c * z^2 + d * z + e"
  assumes ane0 : "a \<noteq> 0"
    and hf : "\<forall>z::real. f z = a * (z - r1) * (z - r2) * (z - r3) * (z - r4)"
  shows "((r1 + r2) \<in> \<rat> \<and> r1 + r2 \<noteq> r3 + r4) \<longrightarrow> (r1 * r2) \<in> \<rat>"
  sorry

end