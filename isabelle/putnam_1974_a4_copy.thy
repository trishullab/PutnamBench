theory putnam_1974_a4 imports Complex_Main
begin

theorem putnam_1974_a4:
  fixes n :: nat
  assumes hn: "n > 0"
  shows "1/(2^(n-1)) * (\<Sum>k::nat=0..((nat \<lceil>n/2\<rceil>)-1). (n - 2*k) * (n choose k)) = ( (\<lambda>n::nat. (n / 2^(n-1)) * ((n-1) choose (nat \<lfloor>(n-1)/2\<rfloor>))) ) n"
  sorry

end
