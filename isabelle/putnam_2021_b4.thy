theory putnam_2021_b4 imports Complex_Main
begin

theorem putnam_2021_b4:
  fixes f :: "nat\<Rightarrow>nat"
  assumes hf : "\<forall>x\<ge>2. f x = f (x-1) + f (x-2)"
    and f01 : "f 0 = 0 \<and> f 1 = 1"
  shows "\<forall>m > 2. \<exists>p. (\<Prod>k=1..(f m - 1). k^k) mod f m = f p"
  sorry

end
