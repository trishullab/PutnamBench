theory putnam_1972_a2 imports Complex_Main
begin

(* The existential magma can have at most the cardinality of the real numbers. *)
theorem putnam_1972_a2:
  assumes pauncount: "\<exists>pamap::'a\<Rightarrow>real. surj pamap"
  shows "(\<forall>(S::'a set)(Smul::'a\<Rightarrow>'a\<Rightarrow>'a). (\<forall>x\<in>S. \<forall>y\<in>S. (Smul x y \<in> S) \<and> Smul x (Smul x y) = y \<and> Smul (Smul y x) x = y) \<longrightarrow> (\<forall>x\<in>S. \<forall>y\<in>S. Smul x y = Smul y x)) \<and> (\<exists>(S::'a set)(Smul::'a\<Rightarrow>'a\<Rightarrow>'a). (\<forall>x\<in>S. \<forall>y\<in>S. (Smul x y \<in> S) \<and> Smul x (Smul x y) = y \<and> Smul (Smul y x) x = y) \<and> \<not>(\<forall>x\<in>S. \<forall>y\<in>S. \<forall>z\<in>S. Smul x (Smul y z) = Smul (Smul x y) z))"
  sorry

end
