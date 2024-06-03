theory putnam_1976_b1 imports Complex_Main
begin

theorem putnam_1976_b1:
  shows "filterlim (\<lambda> n :: nat. 1/(real n) * (\<Sum> k \<in> {1 :: nat..n}. \<lfloor>2*(real n)/(real k)\<rfloor> - 2 * \<lfloor>(real n)/(real k)\<rfloor>)) 
        (nhds (ln (fst putnam_1976_b1_solution) - snd putnam_1976_b1_solution)) at_top" 
  sorry

en) :: "real \<times> real" where
"(efinition putnam_1976_b1_solution :: "real \<times> real" where
"putnam_1976_b1_solution \<equiv> (4,1)"
theorem putnam_1976_b1:
  shows "filterlim (\<lambda> n :: nat. 1/(real n) * (\<Sum> k \<in> {1 :: nat..n}. \<lfloor>2*(real n)/(real k)\<rfloor> - 2 * \<lfloor>(real n)/(real k)\<rfloor>)) 
        (nhds (ln (fst putnam_1976_b1_solution) - snd putnam_1976_b1_solution)) at_top" 
  sorry

en) \<equiv> (4,1)"
theorem putnam_1976_b1:
  shows "filterlim (\<lambda> n :: nat. 1/(real n) * (\<Sum> k \<in> {1 :: nat..n}. \<lfloor>2*(real n)/(real k)\<rfloor> - 2 * \<lfloor>(real n)/(real k)\<rfloor>)) 
        (nhds (ln (fst (efinition putnam_1976_b1_solution :: "real \<times> real" where
"putnam_1976_b1_solution \<equiv> (4,1)"
theorem putnam_1976_b1:
  shows "filterlim (\<lambda> n :: nat. 1/(real n) * (\<Sum> k \<in> {1 :: nat..n}. \<lfloor>2*(real n)/(real k)\<rfloor> - 2 * \<lfloor>(real n)/(real k)\<rfloor>)) 
        (nhds (ln (fst putnam_1976_b1_solution) - snd putnam_1976_b1_solution)) at_top" 
  sorry

en)) - snd (efinition putnam_1976_b1_solution :: "real \<times> real" where
"putnam_1976_b1_solution \<equiv> (4,1)"
theorem putnam_1976_b1:
  shows "filterlim (\<lambda> n :: nat. 1/(real n) * (\<Sum> k \<in> {1 :: nat..n}. \<lfloor>2*(real n)/(real k)\<rfloor> - 2 * \<lfloor>(real n)/(real k)\<rfloor>)) 
        (nhds (ln (fst putnam_1976_b1_solution) - snd putnam_1976_b1_solution)) at_top" 
  sorry

en))) at_top" 
  sorry

end