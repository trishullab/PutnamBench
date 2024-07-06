theory putnam_1975_b2 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1975_b2:
  fixes slab :: "real^3 \<Rightarrow> real \<Rightarrow> real \<Rightarrow> (real^3) set"
  and normals :: "nat \<Rightarrow> real^3"
  and offsets :: "nat \<Rightarrow> real"
  and thicknesses :: "nat \<Rightarrow> real"
  defines "slab \<equiv> \<lambda> normal offset thickness. {x :: real^3. offset < scalar_product normal x \<and> scalar_product normal x < offset + thickness}"
  assumes hnormalsunit: "\<forall> i :: nat. norm (normals i) = 1"
  and hthicknessespos: "\<forall> i :: nat. thicknesses i > 0"
  and hthicknessesconv: "convergent (\<lambda> i :: nat. \<Sum> j = 0..<i. thicknesses j)"
  shows "UNIV \<noteq> (\<Union> i :: nat. slab (normals i) (offsets i) (thicknesses i))"
  sorry

end