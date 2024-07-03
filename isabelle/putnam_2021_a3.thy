theory putnam_2021_a3 imports
Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
begin

definition putnam_2021_a3_solution :: "nat set" where "putnam_2021_a3_solution \<equiv> undefined"
(* {n :: nat. \<exists> m :: nat. m > 0 \<and> n = 3 * m ^ 2} *)
theorem putnam_2021_a3:
  fixes N :: nat
  and Nsphere :: "(real^3) set"
  and intcoords :: "real^3 \<Rightarrow> bool"
  and Ntetra :: bool
  defines "Nsphere \<equiv> {p :: real^3. (p$1) ^ 2 + (p$2) ^ 2 + (p$3) ^ 2 = N}"
  and "intcoords \<equiv> \<lambda> p :: real^3. \<forall> i :: 3. p$i = round (p$i)"
  assumes Ntetra: "\<exists> A B C D :: real^3. A \<in> Nsphere \<and> B \<in> Nsphere \<and> C \<in> Nsphere \<and> D \<in> Nsphere \<and> intcoords A \<and> intcoords B \<and> intcoords C \<and> intcoords D \<and>
                  (\<exists> s > 0. dist A B = s \<and> dist A C = s \<and> dist A D = s \<and> dist B C = s \<and> dist B D = s \<and> dist C D = s)"
  shows "(N > 0 \<and> Ntetra) \<longleftrightarrow> N \<in> putnam_2021_a3_solution"
  sorry

end