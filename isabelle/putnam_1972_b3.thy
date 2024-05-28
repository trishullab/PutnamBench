theory putnam_1972_b3 imports Complex_Main
"HOL-Algebra.Group"
begin

theorem putnam_1972_b3:
  fixes G (structure)
  and A B :: 'a
  assumes Ggroup: "group G"
  and abinG: "A \<in> carrier G \<and> B \<in> carrier G"
  and hab: "A\<otimes>B\<otimes>A = B\<otimes>A[^]2\<otimes>B \<and> A[^]3 = \<one> \<and> (\<exists>n::nat. n > 0 \<and> B[^](2*n-1) = \<one>)"
  shows "B = \<one>"
  sorry

end
