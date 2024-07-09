theory putnam_2017_b3 imports Complex_Main
begin

theorem putnam_2017_b3:
  fixes f :: "real \<Rightarrow> real" and c :: "nat \<Rightarrow> real"
  defines hf: "f \<equiv> \<lambda>x. \<Sum>i::nat.  c (i) * x^i"
  assumes hc: "\<forall>n. c n = 0 \<or> c n = 1"
    and "f (2/3) = 3/2"
  shows "f (1/2) \<notin> \<rat>"
  sorry

end
