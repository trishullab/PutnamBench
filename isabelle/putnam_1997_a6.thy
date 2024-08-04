theory putnam_1997_a6 imports Complex_Main

begin

definition putnam_1997_a6_solution :: "nat \<Rightarrow> nat \<Rightarrow> real" where
"putnam_1997_a6_solution \<equiv> undefined"
(* \<lambda> n k. (n-1) choose (k-1) *)
theorem putnam_1997_a6:
  fixes n :: "nat"
    and C :: "real"
    and x :: "real \<Rightarrow> (nat \<Rightarrow> real)"
    and S :: "real set"
  defines "S \<equiv> {c :: real. x c (n + 1) = 0}"
  assumes hx0 : "\<forall> c :: real. x c 0 = 0"
    and hx1 : "\<forall> c :: real. x c 1 = 1"
    and hxk : "\<forall> (c :: real) (k :: nat). x c (k + 2) = (c * (x c (k+1)) - (n-k) * (x c k))/(k+1)"
    and hC : "C = (GREATEST s. s \<in> S)"
    and hn : "n > 0"
  shows "\<forall> k \<in> {1..n}. x C k = putnam_1997_a6_solution n k"
  sorry

end