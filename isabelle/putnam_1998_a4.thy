theory putnam_1998_a4 imports Complex_Main "HOL-Number_Theory.Cong" 
begin

definition putnam_1998_a4_solution::"nat set" where "putnam_1998_a4_solution \<equiv> undefined"
(* {n::nat. [n = 1] (mod 6)} *)
fun from_digits::"nat list \<Rightarrow> nat" where
  "from_digits L = foldr (\<lambda>a. \<lambda>b. a + 10 * b) L 0"
theorem putnam_1998_a4:
  fixes A::"nat\<Rightarrow>nat list"
  assumes hA1 : "A 1 = [0]"
    and hA2 : "A 2 = [1]"
    and hA : "\<forall>n::nat > 0. A (n+2) = A (n+1) @ A n"
  shows "putnam_1998_a4_solution = {n::nat. n \<ge> 1 \<and> 11 dvd (from_digits (A n))}"
  sorry

end