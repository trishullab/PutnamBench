theory putnam_1989_b2 imports
Complex_Main
"HOL-Algebra.Complete_Lattice"
"HOL-Library.FuncSet"
begin

record 'a semigroup =  "'a partial_object" +
  mult    :: "['a, 'a] \<Rightarrow> 'a" (infixl "\<bullet>\<index>" 70)
locale semigroup =
  fixes G (structure)
  assumes m_closed [intro, simp]:
         "\<lbrakk>x \<in> carrier G; y \<in> carrier G\<rbrakk> \<Longrightarrow> x \<bullet> y \<in> carrier G"
      and m_assoc:
         "\<lbrakk>x \<in> carrier G; y \<in> carrier G; z \<in> carrier G\<rbrakk>
          \<Longrightarrow> (x \<bullet> y) \<bullet> z = x \<bullet> (y \<bullet> z)"

(* Note: this problem includes a quantifier over algebraic structures of a certain type. We therefore assume that this type has cardinality at least that of the reals.*)
theorem putnam_1989_b2:
  fixes cancel :: "'a semigroup \<Rightarrow> bool"
  and group :: "'a semigroup \<Rightarrow> bool"
  defines "cancel \<equiv> \<lambda> S. \<forall> x \<in> carrier S. \<forall> y \<in> carrier S. \<forall> z \<in> carrier S. (x \<bullet>\<^bsub>S\<^esub> y = x \<bullet>\<^bsub>S\<^esub> z \<longrightarrow> y = z) \<and> (y \<bullet>\<^bsub>S\<^esub> x = z \<bullet>\<^bsub>S\<^esub> x \<longrightarrow> y = z)"
  and "group \<equiv> \<lambda> S. \<exists> e \<in> carrier S. \<forall> x \<in> carrier S. x \<bullet>\<^bsub>S\<^esub> e = x \<and> e \<bullet>\<^bsub>S\<^esub> x = x \<and> (\<exists> y \<in> carrier S. x \<bullet>\<^bsub>S\<^esub> y = e \<and> y \<bullet>\<^bsub>S\<^esub> x = e)"
  assumes pacard: "\<exists> pamap :: 'a \<Rightarrow> real. surj pamap"
  shows "(\<forall> S :: 'a semigroup. (carrier S \<noteq> {} \<and> cancel S \<and> (\<forall> a \<in> carrier S. finite {x \<in> carrier S. \<exists> n :: nat. x = foldr (\<bullet>\<^bsub>S\<^esub>) (replicate n a) a})) \<longrightarrow> group S) \<longleftrightarrow> ( True )"
  sorry

end