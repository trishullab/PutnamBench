theory putnam_1996_b4 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_1996_b4_solution :: bool where "putnam_1996_b4_solution \<equiv> undefined"
(* False *)
theorem putnam_1996_b4:
  fixes matsin :: "real^2^2 \<Rightarrow> real^2^2"
  and mat1996 :: "real^2^2"
  and matpow :: "real^2^2 \<Rightarrow> nat \<Rightarrow> real^2^2"
  defines "matsin \<equiv> \<lambda> A :: real^2^2. \<Sum> n :: nat. ((-1) ^ n / fact (2 * n + 1)) *\<^sub>R (matpow A (2 * n + 1))"
  and "mat1996 \<equiv> \<chi> i j. if i = 1 then (if j = 1 then 1 else 1996) else (if j = 1 then 0 else 1)"  
  assumes hmatpow: "\<forall> A :: real^2^2. matpow A 0 = mat 1 \<and> (\<forall> k :: nat. matpow A (k + 1) = A * (matpow A k))"
  shows "(\<exists> A :: real^2^2. matsin A = mat1996) \<longleftrightarrow> putnam_1996_b4_solution"
  sorry

end