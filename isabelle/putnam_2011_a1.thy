theory putnam_2011_a1 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2011_a1_solution :: nat where "putnam_2011_a1_solution \<equiv> undefined"
(* 10053 *)
theorem putnam_2011_a1:
  fixes isspiral :: "(int^2) list \<Rightarrow> bool"
  defines "isspiral \<equiv> \<lambda> P :: (int^2) list. length P \<ge> 3 \<and> P!0 = 0 \<and>
            (\<exists> l :: nat \<Rightarrow> nat. l 0 > 0 \<and> strict_mono_on {0 ..< length P - 1} l \<and> (\<forall> i < length P - 1.
            (i mod 4 = 0 \<longrightarrow> ((P!i)$1 + l i = (P!(i+1))$1 \<and> (P!i)$2 = (P!(i+1))$2)) \<and>
            (i mod 4 = 1 \<longrightarrow> ((P!i)$1 = (P!(i+1))$1 \<and> (P!i)$2 + l i = (P!(i+1))$2)) \<and>
            (i mod 4 = 2 \<longrightarrow> ((P!i)$1 - l i = (P!(i+1))$1 \<and> (P!i)$2 = (P!(i+1))$2)) \<and>
            (i mod 4 = 3 \<longrightarrow> ((P!i)$1 = (P!(i+1))$1 \<and> (P!i)$2 - l i = (P!(i+1))$2))))"
  shows "card {p :: int^2. 0 \<le> p$1 \<and> p$1 \<le> 2011 \<and> 0 \<le> p$2 \<and> p$2 \<le> 2011 \<and> \<not>(\<exists> spiral :: (int^2) list. isspiral spiral \<and> last spiral = p)} = putnam_2011_a1_solution"
  sorry

end
