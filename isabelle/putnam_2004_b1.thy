theory putnam_2004_b1 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_2004_b1:
  fixes n::nat and P::"real poly" and r::rat
  assumes Pdeg : "degree p = n"
    and Pcoeff : "\<forall>i \<in> {0..n}. (coeff p i) \<in> \<int>"
    and Preq0 : "poly p r = 0"
  shows "\<forall>i \<in> {0..<n}. (\<Sum>j=0..i. (coeff p (n-j) * r^(i+1-j))) \<in> \<int>"
  sorry

end
