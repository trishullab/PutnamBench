theory putnam_1998_a4 imports Complex_Main "HOL-Number_Theory.Cong" 
begin

theorem putnam_1998_a4:
  fixes A::"nat\<Rightarrow>nat"
  assumes hA1 : "A 1 = 0"
    and hA2 : "A 2 = 1"
    and hA : "\<forall>n::nat > 2. A n = from_digits (digits (A (n-2)) @ digits (A (n-1)))"
  shows "( {n::nat. [n = 1] (mod 6)} ) = {n::nat. 11 dvd (A n)}"
  sorry

end