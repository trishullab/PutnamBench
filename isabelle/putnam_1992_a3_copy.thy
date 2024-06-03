theory putnam_1992_a3 imports Complex_Main
begin

theorem putnam_1992_a3:
  fixes m :: nat
  and S :: "(nat \<times> nat \<times> nat) set"
  assumes mpos: "m > 0"
  and hS: "\<forall>n x y::nat. ((n, x, y) \<in> S \<longleftrightarrow> (n > 0 \<and> x > 0 \<and> y > 0 \<and> coprime n m \<and> (x^2 + y^2)^m = (x*y)^n))"
  shows "S = ( (\<lambda>m::nat. if (odd m) then {} else {(m+1, 2^(nat \<lfloor>m/2\<rfloor>), 2^(nat \<lfloor>m/2\<rfloor>))}) ) m"
  sorry

end
