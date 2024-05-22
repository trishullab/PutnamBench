theory putnam_2005_b1 imports Complex_Main
begin

definition putnam_2005_b1_solution :: "nat \<Rightarrow> nat \<Rightarrow> real" where "putnam_2005_b1_solution \<equiv> undefined"
(* (\<lambda>i j::nat. if (i=2 \<and> j=0) then 4 else if (i=1 \<and> j=1) then -4 else if (i=0 \<and> j=2) then 1 else if (i=1 \<and> j=0) then 2 else if (i=0 \<and> j=1) then -1 else 0) *)
theorem putnam_2005_b1:
  fixes mvpolyeval :: "(nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> real \<Rightarrow> real \<Rightarrow> real"
  assumes hmvpolyeval: "\<forall>(mvcoeffs::nat\<Rightarrow>nat\<Rightarrow>real)(x::real)(y::real). mvpolyeval mvcoeffs x y = (\<Sum>i j::nat. mvcoeffs i j * x^i * y^j)"
  shows "(\<exists>i j::nat. putnam_2005_b1_solution i j \<noteq> 0) \<and> (\<forall>a::real. mvpolyeval putnam_2005_b1_solution \<lfloor>a\<rfloor> \<lfloor>2*a\<rfloor> = 0)"
  sorry

end
