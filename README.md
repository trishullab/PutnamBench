# PutnamBench

PutnamBench is a benchmark for evaluation of theorem-proving algorithms on competition mathematics problems sourced from the William Lowell Putnam Mathematical Competition years 1962 - 2023. Our formalizations currently support three formal languages : Lean 4 $\land$ Isabelle $\land$ Coq. PutnamBench comprises of 1697 manually-crafted formalizations, aggregated over all languages.

PutnamBench aims to support research in automated mathematical reasoning by providing a multilingual benchmark for evaluating theorem-proving algorithms. It is released under permissive licenses (Apache 2.0 for Lean 4 and Isabelle, MIT for Coq). The informal statements are also available with permission from the MAA.

We encourage community contributions through pull requests, though we kindly ask not to include proofs of any problems to reduce testing contamination. (TODO: After initial release, as of 7/8 this is expected to be in about 1 week.)

## Citation
The associated paper for PutnamBench is {TODO}. Please consider including the following citation if you find PutnamBench useful.
{TODO}

## Statistics 
| Language      | Count          |
| ------------- | -------------- |
| Lean 4        | 640            |
| Isabelle      | 640            |
| Coq           | 417            |

We also report the number of problems in a certain category. Note that some problems fall under multiple categories.

| Category         | Total Quantity | 
| ---------------- | -------------- | 
| Algebra          | 253            | 
| Analysis         | 226            |
| Number Theory    | 107            | 
| Geometry         | 68             |
| Linear Algebra   | 51             | 
| Abstract Algebra | 28             |  
| Combinatorics    | 26             | 
| Probability      | 9              | 
| Set Theory       | 8              | 



## Versioning
- Version: `v-1`
- Not yet officially released. Please refrain from opening issues or making PRs until the initial release.
