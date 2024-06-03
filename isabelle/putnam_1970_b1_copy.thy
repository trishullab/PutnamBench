theory putnam_1970_b1 imports Complex_Main
begin

theorem putnam_1970_b1:
  shows "filterlim (\<lambda>n::nat. 1/(n^4) * (\<Prod>i::nat=1..(2*n). (n^2 + i^2) powr (1/n))) (nhds ( exp (2*ln 5 - 4 + 2*arctan 2) )) at_top"
  sorry

end
