theory putnam_1970_b3 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

theorem putnam_1970_b3:
  fixes S :: "(real^2) set"
  and a b :: real
  assumes hab: "a < b"
  and hS: "\<forall>s\<in>S. s$1 \<in> {a<..<b}"
  and hSclosed: "closed S"
  shows "closed {y::real. (\<exists>s\<in>S. y = s$2)}"
  sorry

end
