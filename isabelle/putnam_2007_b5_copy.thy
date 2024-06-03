theory putnam_2007_b5 imports
Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

theorem putnam_2007_b5:
  fixes k :: nat
  assumes kpos: "k > 0"
  shows "\<exists> P :: real poly list. length P = k \<and> (\<forall> n :: int. \<lfloor>n / k\<rfloor> ^ k = (\<Sum> i = 0..(k - 1). poly (P!i) n * \<lfloor>n / k\<rfloor> ^ i))"
  sorry

end