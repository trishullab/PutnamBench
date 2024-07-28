theory putnam_2005_b5 imports Complex_Main
"HOL-Analysis.Derivative"
begin

theorem putnam_2005_b5:
  fixes n :: nat
    and P :: "('n::finite \<Rightarrow> real) \<Rightarrow> real"
    and ispoly :: "(('n \<Rightarrow> real) \<Rightarrow> real) \<Rightarrow> bool"
    and P2deriv :: "'n \<Rightarrow> ('n \<Rightarrow> real) \<Rightarrow> real"
    and Psumsq :: "('n \<Rightarrow> real) \<Rightarrow> real"
  defines "ispoly \<equiv> (\<lambda>P'::('n\<Rightarrow>real)\<Rightarrow>real. (\<exists>l::(real\<times>('n\<Rightarrow>nat)) list. \<forall>x::'n\<Rightarrow>real. P' x = (\<Sum>j::nat=0..((length l)-1). (fst (l!j)) * (\<Prod>i::'n\<in>UNIV. (x i) ^ ((snd (l!j)) i)))))"
    and "P2deriv \<equiv> (\<lambda>(i::'n)(x::'n\<Rightarrow>real). (deriv^^2) (\<lambda>xi::real. P (\<lambda>i'::'n. if i' = i then xi else x i')) (x i))"
    and "Psumsq \<equiv> (\<lambda>x::'n\<Rightarrow>real. (\<Sum>i::'n\<in>UNIV. (x i)^2))"
  assumes npos: "n > 0"
    and pncard: "CARD('n) = n"
    and Ppoly: "ispoly P"
    and hderiv: "\<forall>x::'n\<Rightarrow>real. (\<Sum>i::'n\<in>UNIV. P2deriv i x) = 0"
    and hsumsq: "\<exists>Q::('n\<Rightarrow>real)\<Rightarrow>real. ispoly Q \<and> (\<forall>x::'n\<Rightarrow>real. (Psumsq x) * (Q x) = P x)"
  shows "P = (\<lambda>x::'n\<Rightarrow>real. 0)"
  sorry

end
