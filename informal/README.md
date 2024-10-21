The informal statements can be found in `putnam.json`.

Remember that when writing $\LaTeX$ within a JSON string, you must escape backslashes;
that is, you must write:
```json
"informal_statement": "What is the cardinality of $\\frac{1}{2} \\pm 1 \\pm 2$"
```

These statements are also present in the docstrings of some of the formal statements.
Github CI will automatically catch if these are out of sync, but if you update them in one place you will have to update them in the other.

When a problem happens to require a solution (i.e. some additional data requested in the problem statement), we also add an `informal_solution` field which has as value an imperative sentence roughly of the form "Show that the solution is ..."
