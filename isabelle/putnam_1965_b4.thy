theory putnam_1965_b4 imports
Complex_Main
begin

definition putnam_1965_b4_solution :: "(((real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real)) \<times> ((real \<Rightarrow> real) \<Rightarrow> (real \<Rightarrow> real))) \<times> ((real set) \<times> (real \<Rightarrow> real))" where "putnam_1965_b4_solution \<equiv> undefined"
(* ((\<lambda> h :: real \<Rightarrow> real. \<lambda> x :: real. h x + x, \<lambda> h :: real \<Rightarrow> real. \<lambda> x :: real. h x + 1), ({x :: real. x \<ge> 0}, sqrt)) *)
theorem putnam_1965_b4:
  fixes f :: "nat \<Rightarrow> real \<Rightarrow> real"
  assumes hf: "\<forall> n > 0. f n = (\<lambda> x :: real. (\<Sum> i = 0 .. n div 2. (n choose (2 * i)) * x ^ i) / (\<Sum> i = 0 .. (n - 1) div 2. (n choose (2 * i + 1)) * x ^ i))"
  shows "let ((p, q), (s, g)) = putnam_1965_b4_solution in (\<forall> n > 0. f (n + 1) = (\<lambda> x. p (f n) x / q (f n) x) \<and> s = {x :: real. convergent (\<lambda> n. f n x)} \<and> (\<forall> x \<in> s. (\<lambda> n. f n x) \<longlonglongrightarrow> g x))"
  sorry

end
  