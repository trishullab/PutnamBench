The informal statement information is encapsulated in json files indicating batches of problems.

This statement is also present in the docstrings of some of the formal statements.
Github CI will automatically catch if these are out of sync, but if you update one you will have to update the other.

Remember that when encoding $\LaTeX$` as a JSON string, you must escape backslashes;
that is, you must write:
```json
"informal_statement": "What is the cardinality of $\\frac{1}{2} \\pm 1 \\pm 2$"
```
