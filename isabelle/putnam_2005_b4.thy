theory putnam_2005_b4 imports Complex_Main
begin

theorem putnam_2005_b4:
  fixes m n::nat 
    and f::"nat\<Rightarrow>nat\<Rightarrow>nat"
  assumes mnpos : "m > 0 \<and> n > 0"
    and hf : "\<forall>m' > 0. \<forall>n' > 0. f m' n' = card {x::int list. size x = n' \<and> (\<Sum>i=0..<n'. abs(x!i)) \<le> m'}"
  shows "f m n = f n m"
  sorry

end
