# [PutnamBench](https://arxiv.org/abs/2407.11214)

<p align="center">
    <a href="https://trishullab.github.io/PutnamBench/leaderboard.html"><img src="https://img.shields.io/badge/%F0%9F%8F%86-leaderboard-%23ff8811"></a>
    <a href="https://trishullab.github.io/PutnamBench/"><img src="https://img.shields.io/badge/%F0%9F%8F%86-website-8A2BE2"></a>
    <a href="https://arxiv.org/abs/2407.11214"><img src="https://img.shields.io/badge/arXiv-2407.11214-b31b1b.svg"></a>
</p>

PutnamBench is a benchmark for evaluation of theorem-proving algorithms on competition mathematics problems sourced from the William Lowell Putnam Mathematical Competition years 1962 - 2024. Our formalizations currently support three formal languages : Lean 4 $\land$ Isabelle $\land$ Coq. PutnamBench comprises of 1709 manually-crafted formalizations, aggregated over all languages.

PutnamBench aims to support research in automated mathematical reasoning by providing a multilingual benchmark for evaluating theorem-proving algorithms. It is released under permissive licenses (Apache 2.0 for Lean 4 and Isabelle, MIT for Coq). The [informal statements](informal/README.md) are also available with permission from the MAA.

PutnamBench includes factored solutions for problems which require exhibiting a numerical answer in addition to its proof of correctness. For these problems, one can attempt two tasks: proving the problem with the numerical answer written into the theorem statement, or additionally producing the answer along with the proof.

We are hosting a [**leaderboard**](https://trishullab.github.io/PutnamBench/leaderboard.html) and will readily receive evaluation results which are accompanied by a preprint or publication. **Do not** include proofs as confirmation in any public setting. Please reach out privately at `george.tsoukalas@utexas.edu` with any requests for additions to the leaderboard. 

**We strongly encourage community feedback!** Please let us know if you have any comments for improving PutnamBench. If you notice any mistakes, please raise an issue on the repository and we will address it. We kindly ask that you do not write formal proofs for any of the problems in an effort to reduce contamination. If you do wish to write formal proofs for a subset of the problems, we please ask that you first engage in discussion with us.

## Statistics 
| Language      | Count          |
| ------------- | -------------- |
| Lean 4        | 657            |
| Isabelle      | 640            |
| Coq           | 412            |

We also report the number of problems in a certain category. Note that some problems fall under multiple categories. While the categories are intended to capture general features of the problems, we also note that there is a high variance of problems inside an individual category.

| Category         | Total Quantity | 
| ---------------- | -------------- | 
| Algebra          | 253            | 
| Analysis         | 226            |
| Number Theory    | 108            | 
| Geometry         | 69             |
| Linear Algebra   | 51             | 
| Combinatorics    | 29             | 
| Abstract Algebra | 28             |  
| Probability      | 10             | 
| Set Theory       | 8              | 

## Citation
The associated paper for PutnamBench is [available at this link](https://arxiv.org/abs/2407.11214). Please consider including the following citation if you find PutnamBench useful.
```
@misc{tsoukalas2024putnambenchevaluatingneuraltheoremprovers,
      title={PutnamBench: Evaluating Neural Theorem-Provers on the Putnam Mathematical Competition}, 
      author={George Tsoukalas and Jasper Lee and John Jennings and Jimmy Xin and Michelle Ding and Michael Jennings and Amitayush Thakur and Swarat Chaudhuri},
      year={2024},
      eprint={2407.11214},
      archivePrefix={arXiv},
      primaryClass={cs.AI},
      url={https://arxiv.org/abs/2407.11214}, 
}
```
