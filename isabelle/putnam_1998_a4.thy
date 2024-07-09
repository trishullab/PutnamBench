theory putnam_1998_a4 imports Complex_Main "HOL-Number_Theory.Cong" 
begin

definition putnam_1998_a4_solution::"nat set" where "putnam_1998_a4_solution \<equiv> undefined"
(* {n::nat. [n = 1] (mod 6)} *)
fun digits::"nat \<Rightarrow> nat list" where
  "digits n = (if n < 10 then [n] else ([n mod 10::nat] @ digits (n div 10::nat)))"
fun from_digits::"nat list \<Rightarrow> nat" where
  "from_digits L = foldr (\<lambda>a. \<lambda>b. a + 10 * b) L 0"
theorem putnam_1998_a4:
  fixes A::"nat\<Rightarrow>nat"
  assumes hA1 : "A 1 = 0"
    and hA2 : "A 2 = 1"
    and hA : "\<forall>n::nat > 2. A n = from_digits (digits (A (n-2)) @ digits (A (n-1)))"
  shows "putnam_1998_a4_solution = {n::nat. 11 dvd (A n)}"
  sorry

end