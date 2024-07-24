theory putnam_2013_a5 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Analysis.Lebesgue_Measure"
"HOL-Analysis.Cross3"
begin

(* uses (nat ⇒ nat ⇒ nat ⇒ real), (nat ⇒ (real^2)), and (nat ⇒ (real^3)) instead of limiting inputs to (Fin m) and ensuring inputs are strictly increasing *)
theorem putnam_2013_a5:
  fixes m :: nat
    and area2 :: "(real^2) ⇒ (real^2) ⇒ (real^2) ⇒ real"
    and area3 :: "(real^3) ⇒ (real^3) ⇒ (real^3) ⇒ real"
    and areadef2 :: "(nat ⇒ nat ⇒ nat ⇒ real) ⇒ bool"
    and areadef3 :: "(nat ⇒ nat ⇒ nat ⇒ real) ⇒ bool"
    and cross :: "(real^3) ⇒ (real^3) ⇒ (real^3) ⇒ (real^3)"
  defines "cross ≡ λ a b c. sgn (cross3 (b - a) (c - a))"
  assumes mge3: "m ≥ 3"
    and harea2: "∀a b c::real^2. area2 a b c = emeasure lebesgue (convex hull {a, b, c})"
    and harea3: "∀a b c::real^3. area3 a b c = emeasure lebesgue (convex hull {a, b, c, a + (cross a b c), b + (cross a b c), c + (cross a b c)})"
    and hareadef2: "∀a::nat⇒nat⇒nat⇒real. areadef2 a = (∀A::nat⇒(real^2). (∑i::nat∈{0..(m-1)}. ∑j::nat∈{i<..(m-1)}. ∑k::nat∈{j<..(m-1)}. (a i j k * area2 (A i) (A j) (A k))) ≥ 0)"
    and hareadef3: "∀a::nat⇒nat⇒nat⇒real. areadef3 a = (∀A::nat⇒(real^3). (∑i::nat∈{0..(m-1)}. ∑j::nat∈{i<..(m-1)}. ∑k::nat∈{j<..(m-1)}. (a i j k * area3 (A i) (A j) (A k))) ≥ 0)"
  shows "∀a::nat⇒nat⇒nat⇒real. (areadef2 a ⟶ areadef3 a)"
  sorry

end
