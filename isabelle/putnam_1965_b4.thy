theory putnam_1965_b4 imports
Complex_Main
begin

definition putnam_1965_b4_solution :: "(((real \<Rightarrow> real) \<Rightarrow> real \<Rightarrow> real) \<times> ((real \<Rightarrow> real) \<Rightarrow> real \<Rightarrow> real)) \<times> ((real set) \<times> (real \<Rightarrow> real))" where "putnam_1965_b4_solution \<equiv> undefined"
(* ((\<lambda> h :: real \<Rightarrow> real. \<lambda> x :: real. h x + x, \<lambda> h :: real \<Rightarrow> real. \<lambda> x :: real. h x + 1), ({x :: real. x \<ge> 0}, sqrt)) *)
theorem putnam_1965_b4:
  fixes f u v :: "nat \<Rightarrow> real \<Rightarrow> real"
    and n :: "nat"
  assumes hu : "\<forall> n :: nat > 0. \<forall> x. u n x = (\<Sum> i = 0 .. n div 2. (n choose (2 * i)) * x ^ i)"
    and hv : "\<forall> n :: nat > 0. \<forall> x. v n x = (\<Sum> i = 0 .. (n - 1) div 2. (n choose (2 * i + 1)) * x ^ i)"
    and hf : "\<forall> n :: nat > 0. \<forall> x. f n x = u n x / v n x"
    and hn : "0 < n"
  shows "let ((p, q), (s, g)) = putnam_1965_b4_solution in 
           (\<forall> n > 0. v n x \<noteq> 0 \<longrightarrow> v (n+1) x \<noteq> 0 \<longrightarrow> q (f n) x \<noteq> 0 \<longrightarrow>  f (n + 1) = (\<lambda> x. p (f n) x / q (f n) x) \<and>
           s = {x :: real. convergent (\<lambda> n. f n x)} \<and> 
           (\<forall> x \<in> s. (\<lambda> n. f n x) \<longlonglongrightarrow> g x))"
  sorry

end