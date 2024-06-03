theory putnam_2018_a4 imports Complex_Main
begin

(* uses (nat \<Rightarrow> nat) instead of ({1..n} \<Rightarrow> nat) *)
theorem putnam_2018_a4:
  fixes m n :: nat
  and a :: "nat \<Rightarrow> nat"
  and Gmul :: "'G \<Rightarrow> 'G \<Rightarrow> 'G" (infixl "\<^bold>*" 70)
  and Gunit :: 'G ("\<^bold>1")
  and Ginv :: "'G \<Rightarrow> 'G"
  and g h :: 'G
  and Gpow :: "'G \<Rightarrow> nat \<Rightarrow> 'G"
  and ghprodrec :: "nat \<Rightarrow> 'G"
  assumes mnpos: "m > 0 \<and> n > 0"
  and mngcd: "gcd m n = 1"
  and ha: "\<forall>k::nat\<in>{1..n}. (int (a k)) = \<lfloor>(real (m*k)) / n\<rfloor> - \<lfloor>(real (m*(k-1))) / n\<rfloor>"
  and Ggroup: "group Gmul Gunit Ginv"
  and hGpow: "\<forall>x::'G. Gpow x 0 = \<^bold>1 \<and> (\<forall>k::nat>0. Gpow x k = (Gpow x (k-1) \<^bold>* x))"
  and hghprodrec: "ghprodrec 0 = \<^bold>1 \<and> (\<forall>k::nat\<in>{1..n}. ghprodrec k = ghprodrec (k-1) \<^bold>* g \<^bold>* Gpow h (a k))"
  and ghprod: "ghprodrec n = \<^bold>1"
  shows "g \<^bold>* h = h \<^bold>* g"
  sorry

end
