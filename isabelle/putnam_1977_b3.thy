theory putnam_1977_b3 imports Complex_Main
begin

definition putnam_1977_b3_solution :: "bool" where
"putnam_1977_b3_solution \<equiv> False"
theorem putnam_1977_b3:
  fixes P balanced :: "(real \<times> real \<times> real) \<Rightarrow> bool"
    and B :: "(real \<times> real \<times> real) \<Rightarrow> (real \<times> real \<times> real)"
  defines "P \<equiv> \<lambda> w :: real \<times> real \<times> real. let (a,b,c) = w in 
        (a \<notin> \<rat> \<and> b \<notin> \<rat> \<and> c \<notin> \<rat> \<and> a > 0 \<and> b > 0 \<and> c > 0 \<and> a + b + c = 1)"
    and "balanced \<equiv> \<lambda> w :: real \<times> real \<times> real. let (a,b,c) = w in 
        (a < 1/2 \<and> b < 1/2 \<and> c < 1/2)"
    and "B \<equiv> \<lambda> w :: real \<times> real \<times> real. let (a,b,c) = w in 
        ((if a > 1/2 then (2 * a - 1) else (2 * a), if b > 1/2 then (2 * b - 1) else (2 * b), if c > 1/2 then (2 * c - 1) else (2 * c)))"
  shows "(\<forall> t :: real \<times> real \<times> real. P t \<longrightarrow> (\<exists> n :: nat. balanced ((B^^n) t))) \<longleftrightarrow> putnam_1977_b3_solution"
  sorry

end