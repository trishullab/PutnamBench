theory putnam_2006_a5 imports Complex_Main
begin

(* uses (nat \<Rightarrow> real) instead of ({1..n} \<Rightarrow> real) *)
definition putnam_2006_a5_solution :: "nat \<Rightarrow> int" where "putnam_2006_a5_solution \<equiv> undefined"
(* (\<lambda>n::nat. if ([n = 1] (mod 4)) then n else -n) *)
theorem putnam_2006_a5:
  fixes n :: nat
  and theta :: real
  and a :: "nat \<Rightarrow> real"
  assumes nodd: "odd n"
  and thetairr: "theta/pi \<notin> \<rat>"
  and ha: "\<forall>k::nat\<in>{1..n}. a k = tan (theta + (k*pi)/n)"
  shows "(\<Sum>k::nat=1..n. a k) / (\<Prod>k::nat=1..n. a k) = putnam_2006_a5_solution n"
  sorry

end
