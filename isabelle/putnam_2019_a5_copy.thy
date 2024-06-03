theory putnam_2019_a5 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
"HOL-Library.Cardinality"
begin

(* uses (nat \<Rightarrow> 'p) instead of (Fin p \<Rightarrow> 'p) and ('p \<Rightarrow> nat) instead of ('p \<Rightarrow> Fin p) *)
theorem putnam_2019_a5:
  fixes p :: nat
  and ppind :: "nat \<Rightarrow> 'p::comm_semiring_1"
  and q :: "'p poly"
  and a :: "nat \<Rightarrow> 'p"
  and ppindinv :: "'p \<Rightarrow> nat"
  and npoly :: "nat \<Rightarrow> ('p poly)"
  and ndiv :: "nat \<Rightarrow> bool"
  assumes podd: "odd p"
  and pprime: "prime p"
  and ppcard: "CARD('p) = p"
  and hppind: "ppind ` {0..(p-1)} = UNIV"
  and ppadd: "ppind 0 = 0 \<and> (\<forall>i::nat\<in>{0..(p-1)}. \<forall>j::nat\<in>{0..(p-1)}. ppind i + ppind j = ppind ((i + j) mod p))"
  and ppmult: "ppind 1 = 1 \<and> (\<forall>i::nat\<in>{0..(p-1)}. \<forall>j::nat\<in>{0..(p-1)}. ppind i * ppind j = ppind ((i * j) mod p))"
  and hq: "\<forall>k::nat. coeff q k = a k"
  and ha0: "a 0 = 0 \<and> (\<forall>k::nat>(p-1). a k = 0)"
  and haother: "\<forall>k::nat\<in>{1..(p-1)}. a k = ppind ((k ^ (nat (round ((p-1)/2)))) mod p)"
  and hppindinv: "\<forall>i::nat\<in>{0..(p-1)}. ppindinv (ppind i) = i"
  and hnpoly: "\<forall>n::nat. \<forall>x::'p. poly (npoly n) x = ppind (((ppindinv x - 1)^n) mod p)"
  and hndiv: "\<forall>n::nat. ndiv n = ((npoly n) dvd q)"
  shows "(GREATEST n::nat. ndiv n) = ( (\<lambda>p::nat. nat (round ((p - 1)/2))) ) p"
  sorry

end
