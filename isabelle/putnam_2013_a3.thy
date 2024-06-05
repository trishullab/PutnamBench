theory putnam_2013_a3 imports Complex_Main
begin

(* uses (nat \<Rightarrow> real) instead of ({0..n} \<Rightarrow> real) *)
theorem putnam_2013_a3:
  fixes n :: nat
  and a :: "nat \<Rightarrow> real"
  and x :: real
  assumes hx: "0 < x \<and> x < 1"
  and hsum: "(\<Sum>i::nat=0..n. a i / (1 - x^(i+1))) = 0"
  shows "\<exists>y::real. 0 < y \<and> y < 1 \<and> (\<Sum>i::nat=0..n. a i * y^i) = 0"
  sorry

end
