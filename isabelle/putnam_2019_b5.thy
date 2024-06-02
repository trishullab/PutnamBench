theory putnam_2019_b5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

definition putnam_2019_b5_solution::"nat \<times> nat" where "putnam_2019_b5_solution \<equiv> undefined"
(* (2019, 1010) *)
theorem putnam_2019_b5:
  fixes f::"nat\<Rightarrow>int" and p::"real poly"
  assumes hf : "\<forall>x\<ge>3. f x = f (x-1) + f (x-2)"
    and f12 : "f 1 = 1 \<and> f 2 = 1"
    and pdeg : "degree p = 1008"
    and hp : "\<forall>n\<le>1008. poly p (2 * n + 1) = f (2 * n + 1)"
  shows "\<forall>j k::nat. (poly p 2019 = f j - f k) \<longleftrightarrow> ((j, k) = putnam_2019_b5_solution)"
  sorry

end
