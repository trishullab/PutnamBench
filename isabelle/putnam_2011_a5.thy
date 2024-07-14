theory putnam_2011_a5 imports
Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2011_a5:
  fixes f :: "real \<Rightarrow> real \<Rightarrow> real"
  and g :: "real \<Rightarrow> real"
  and C1diff :: "(real \<Rightarrow> real \<Rightarrow> real) \<Rightarrow> bool"
  defines "C1diff \<equiv> \<lambda> h. (\<forall> u. (h u) C1_differentiable_on UNIV) \<and> (\<forall> v. (\<lambda> x. h x v) C1_differentiable_on UNIV)"
  assumes Fgdiff: "g C1_differentiable_on UNIV \<and> (deriv g) C1_differentiable_on UNIV \<and> 
                    C1diff f \<and> (C1diff (\<lambda> u. deriv (f u))) \<and> C1diff (\<lambda> u v. deriv (\<lambda> x. f x v) u)"
  and prop1: "\<forall> u :: real. f u u = 0"
  and prop2: "\<forall> x :: real. g x > 0 \<and> x ^ 2 * g x \<le> 1"
  and prop3: "\<forall> u v :: real. \<exists> c :: real. deriv (\<lambda> x. f x v) u = c * g u \<and> deriv (f u) v = c * (-g v)"
  shows "\<exists> C :: real. \<forall> n \<ge> 2. \<forall> x :: nat \<Rightarrow> real. (LEAST Fxx :: real. \<exists> i j :: nat. i \<le> n \<and> j \<le> n \<and> i \<noteq> j \<and> Fxx = \<bar>F (x i) (x j)\<bar>) \<le> C / n"
  sorry

end