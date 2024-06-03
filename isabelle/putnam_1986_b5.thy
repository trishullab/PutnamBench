theory putnam_1986_b5 imports Complex_Main "HOL-Computational_Algebra.Polynomial"
begin

definition putnam_1986_b5_solution::bool where "putnam_1986_b5_solution \<equiv> undefined"
(* False *)
theorem putnam_1986_b5:
  fixes f::"real poly poly poly" and perms::"((real poly poly poly) set) set" and eval::"(real poly poly poly) \<Rightarrow>real\<Rightarrow>real\<Rightarrow>real\<Rightarrow>real"
  defines "f \<equiv> [:[:[: 0, 0, 1:], 0, 1:], [:0, [:0, 1:]:], 1:]" (* x^2 + y^2 + z^2 + xyz = ((0 + 0z + z^2) + 0y + y^2) + (0 + (0 + z)y) x + x^2 *)
    and "perms \<equiv> {
      {[:0, 1:], [:[:0, 1:]:], [:[:[:0, 1:]:]:]},
      {[:0, 1:], [:[:0, -1:]:], [:[:[:0, -1:]:]:]},
      {[:0, -1:], [:[:0, 1:]:], [:[:[:0, -1:]:]:]},
      {[:0, -1:], [:[:0, -1:]:], [:[:[:0, 1:]:]:]}
    }"
    and "eval \<equiv> \<lambda>P. \<lambda>x. \<lambda>y. \<lambda>z. poly (poly (poly P [:[:z:]:]) [:y:]) x"
  shows "(\<forall>p q r::real poly poly poly. (\<forall>x y z::real. eval f x y z = eval f (eval p x y z) (eval q x y z) (eval r x y z)) \<longrightarrow> ({p, q, r} \<in> perms)) \<longleftrightarrow> putnam_1986_b5_solution"
  sorry

end
