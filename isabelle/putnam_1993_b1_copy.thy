theory putnam_1993_b1 imports Complex_Main
begin

theorem putnam_1993_b1:
  fixes nallmexk::"nat\<Rightarrow>bool"
  defines "nallmexk \<equiv> \<lambda>n::nat. (n > 0 \<and> (\<forall>m \<in> {0<..<1993}. (\<exists>k::int. (m / 1993 < k / n) \<and> (k / n < (m+1) / 1994))))"
  shows "( 3987 ) = (LEAST n. nallmexk n)"
  sorry

end