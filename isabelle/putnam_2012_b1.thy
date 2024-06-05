theory putnam_2012_b1 imports Complex_Main
begin

(* NOTE: Isabelle doesn't support restricted domains, so we have to get around this by treating functions as products *)
theorem putnam_2012_b1:
  fixes S::"((real\<times>real) set) set"
  assumes f1 : "{(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> y = exp x - 1} \<in> S"
    and f2 : "{(x, y). x \<ge> 0 \<and> y \<ge> 0 \<and> y = ln (x+1) } \<in> S"
    and hsum : "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys + yt)} \<in> S"
    and hcomp : "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> ys = xt \<longrightarrow> y = yt)} \<in> S"
    and hdiff : "\<forall>s \<in> S. \<forall>t \<in> S. (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. xs = xt \<longrightarrow> ys \<ge> yt) \<longrightarrow> 
                        {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys - yt)} \<in> S"
  shows "\<forall>s \<in> S. \<forall>t \<in> S. {(x, y). (\<forall>(xs, ys) \<in> s. \<forall>(xt, yt) \<in> t. x = xs \<and> x = xt \<longrightarrow> y = ys * yt)} \<in> S"
  sorry

end
