theory putnam_2013_a5 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Cross3"
begin

(* uses (nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> real), (nat \<Rightarrow> (real^2)), and (nat \<Rightarrow> (real^3)) instead of limiting inputs to (Fin m) and ensuring inputs are strictly increasing *)
theorem putnam_2013_a5:
  fixes m :: nat
    and area2 :: "(real^2) \<Rightarrow> (real^2) \<Rightarrow> (real^2) \<Rightarrow> real"
    and area3 :: "(real^3) \<Rightarrow> (real^3) \<Rightarrow> (real^3) \<Rightarrow> real"
    and areadef2 :: "(nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
    and areadef3 :: "(nat \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> real) \<Rightarrow> bool"
    and cross :: "(real^3) \<Rightarrow> (real^3) \<Rightarrow> (real^3) \<Rightarrow> (real^3)"
  defines "cross \<equiv> \<lambda> a b c. sgn (cross3 (b - a) (c - a))"
  assumes mge3: "m \<ge> 3"
    and harea2: "\<forall>a b c::real^2. area2 a b c = emeasure lebesgue (convex hull {a, b, c})"
    and harea3: "\<forall>a b c::real^3. area3 a b c = emeasure lebesgue (convex hull {a, b, c, a + (cross a b c), b + (cross a b c), c + (cross a b c)})"
    and hareadef2: "\<forall>a::nat\<Rightarrow>nat\<Rightarrow>nat\<Rightarrow>real. areadef2 a = (\<forall>A::nat\<Rightarrow>(real^2). (\<Sum>i::nat\<in>{0..(m-1)}. \<Sum>j::nat\<in>{i<..(m-1)}. \<Sum>k::nat\<in>{j<..(m-1)}. (a i j k * area2 (A i) (A j) (A k))) \<ge> 0)"
    and hareadef3: "\<forall>a::nat\<Rightarrow>nat\<Rightarrow>nat\<Rightarrow>real. areadef3 a = (\<forall>A::nat\<Rightarrow>(real^3). (\<Sum>i::nat\<in>{0..(m-1)}. \<Sum>j::nat\<in>{i<..(m-1)}. \<Sum>k::nat\<in>{j<..(m-1)}. (a i j k * area3 (A i) (A j) (A k))) \<ge> 0)"
  shows "\<forall>a::nat\<Rightarrow>nat\<Rightarrow>nat\<Rightarrow>real. (areadef2 a \<longrightarrow> areadef3 a)"
  sorry

end
