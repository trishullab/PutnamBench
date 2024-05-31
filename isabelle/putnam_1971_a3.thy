theory putnam_1971_a3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1971_a3:
  fixes a b c :: "real^2"
  and oncircle :: "(real^2) \<Rightarrow> real \<Rightarrow> (real^2) \<Rightarrow> bool"
  and R :: real
  assumes habclattice: "a$1 = round (a$1) \<and> a$2 = round (a$2) \<and> b$1 = round (b$1) \<and> b$2 = round (b$2) \<and> c$1 = round (c$1) \<and> c$2 = round (c$2)"
  and habcneq: "a \<noteq> b \<and> a \<noteq> c \<and> b \<noteq> c"
  defines "oncircle \<equiv> (\<lambda>(C::real^2)(r::real)(p::real^2). (dist p C = r))"
  assumes hcircle: "\<exists>C::real^2. oncircle C R a \<and> oncircle C R b \<and> oncircle C R c"
  shows "(dist a b) * (dist a c) * (dist b c) \<ge> 2*R"
  sorry

end
