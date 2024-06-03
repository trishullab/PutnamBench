theory putnam_2018_b1 imports Complex_Main
"HOL-Analysis.Finite_Cartesian_Product"
"HOL-Library.Disjoint_Sets"
begin

theorem putnam_2018_b1:
  fixes P :: "(int^2) set"
  and v :: "int^2"
  and vinP :: bool
  and Pvpart :: bool
  assumes hP: "P \<equiv> {v'::int^2. v'$1 \<in> {0..2} \<and> v'$2 \<in> {0..100}}"
  and hvinP: "vinP \<equiv> (v \<in> P)"
  and hPvpart: "Pvpart = (\<exists>Q R::(int^2) set. (partition_on (P - {v}) {Q, R}) \<and> card Q = card R \<and> (\<Sum>q\<in>Q. q) = (\<Sum>r\<in>R. r))"
  shows "(vinP \<and> Pvpart) \<longleftrightarrow> v \<in> ( {v::int^2. (\<exists>b::int. b \<in> {0..100} \<and> even b \<and> v = vector [1, b])} )"
  sorry

end
