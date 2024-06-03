theory putnam_2007_a1 imports Complex_Main
"HOL-Analysis.Derivative"
begin

(* Note: Modified definition of tangent to handle this, but this is a bit of cheating - You would have to know that this works *)
theorem putnam_2007_a1:
  shows "\<forall>a::real. (reflect_tangent (\<lambda>x::real. a*x^2 + a*x + 1/24) (\<lambda>y::real. a*y^2 + a*y + 1/24) \<longleftrightarrow> a \<in> ( {2/3, 3/2, (13 + sqrt 601)/12, (13 - sqrt 601)/12} ))"
  sorry

end
