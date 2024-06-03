theory putnam_1976_b5 imports Complex_Main
begin

theorem putnam_1976_b5:
  shows "\<forall>n::nat. (\<lambda>x. (\<Sum>k=0..n. ((-1)^k * (n choose k)) * (x - k)^n)) = ( \<lambda>n. \<lambda>x. fact n ) n"
  sorry

end