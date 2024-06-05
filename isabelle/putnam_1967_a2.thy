theory putnam_1967_a2 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat \<Rightarrow> nat) instead of (Fin n \<Rightarrow> Fin n \<Rightarrow> nat) *)
theorem putnam_1967_a2:
  fixes S :: "nat \<Rightarrow> int"
  assumes hS0: "S 0 = 1"
  and hSn: "\<forall>n::nat\<ge>1. S n = card {A::nat\<Rightarrow>nat\<Rightarrow>nat. (\<forall>i::nat\<in>{0..(n-1)}. \<forall>j::nat\<in>{0..(n-1)}. A i j = A j i) \<and> (\<forall>j::nat\<in>{0..(n-1)}. (\<Sum>i::nat=0..(n-1). A i j) = 1) \<and> (\<forall>i j::nat. ((i \<ge> n \<or> j \<ge> n) \<longrightarrow> A i j = 0))}"
  shows "(\<forall>n::nat\<ge>1. S (n+1) = S n + n * S (n-1)) \<and> (\<forall>x::real. (\<Sum>n::nat. S n * (x^n / fact n)) = exp (x + x^2/2))"
  sorry

end
