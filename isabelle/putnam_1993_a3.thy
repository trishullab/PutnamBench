theory putnam_1993_a3 imports Complex_Main
begin

(* Note: Boosted domain to infinite set *)
theorem putnam_1993_a3:
  fixes pown::"nat \<Rightarrow> ((nat set) set)" and c::"nat\<Rightarrow>nat\<Rightarrow>nat"
  defines "pown \<equiv> \<lambda>n. Pow {1..n}"
    and "c \<equiv> \<lambda>n. \<lambda>m. card {f::(nat set) \<Rightarrow> nat. (\<forall>s \<in> pown n. f s \<in> {1..m}) \<and> (\<forall>s \<in> - pown n. f s = 0) \<and>
      (\<forall>A B. (A \<in> pown n \<and> B \<in> pown n) \<longrightarrow> f (A \<inter> B) = min (f A) (f B))}"
  shows "\<forall>n \<ge> 1. \<forall>m \<ge> 1. c n m = (\<Sum>j=1..m. j^n)"
  sorry

end