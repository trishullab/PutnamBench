theory putnam_1965_a3 imports 
Complex_Main
begin

(* Note: The MAA archive contains an error on this problem; the second term in the sum of the second limit should read "a2", not "a4". *)
theorem putnam_1965_a3:
  fixes a :: "nat \<Rightarrow> real"
  and \<alpha> :: "complex"
  shows "((\<lambda> n :: nat. (\<Sum> k = 1 .. n. exp (\<i> * a k)) / n) \<longlonglongrightarrow> \<alpha>) \<longleftrightarrow> ((\<lambda> n :: nat. (\<Sum> k = 1 .. n ^ 2. exp (\<i> * a k)) / n ^ 2) \<longlonglongrightarrow> \<alpha>)"
  sorry

end
