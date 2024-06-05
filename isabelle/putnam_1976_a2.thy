theory putnam_1976_a2 imports Complex_Main
"HOL-Computational_Algebra.Polynomial"
begin

(* Note: Annoying solution, but it works. Need to find a way to cast an int poly poly to int poly poly poly *)
theorem putnam_1976_a2:
  fixes P Q :: "int poly poly"
    and F G :: "nat \<Rightarrow> (int poly poly)"
    and is_poly_PQ :: "int poly poly \<Rightarrow> bool"
  defines "P \<equiv> [:0, [:0, 0, 1:]:] + [:0, 0, [:0, 1:]:]"
    and "Q \<equiv> [:[:0, 0, 1:]:] + [:0, [:0, 1:]:] + [:0, 0, [:1:]:]"
    and "F \<equiv> \<lambda> n :: nat. ([:[:0, 1:]:] + [:0, [:1:]:])^n - [:[:0, 1:]^n:] - [:0, [:1:]:]^n"
    and "G \<equiv> \<lambda> n :: nat. ([:[:0, 1:]:] + [:0, [:1:]:])^n + [:[:0, 1:]^n:] + [:0, [:1:]:]^n"
  shows "\<forall> n :: nat. n > 0 \<longrightarrow> (\<exists> A :: int poly poly. (\<forall> a b :: int. poly (poly (F n) [:b:]) a = poly (poly (A) [:(poly (poly Q [:b:]) a):]) (poly (poly P [:b:]) a)) 
         \<or> (\<forall> a b :: int. poly (poly (G n) [:b:]) a = poly (poly (A) [:(poly (poly Q [:b:]) a):]) (poly (poly P [:b:]) a)))"
  sorry

end