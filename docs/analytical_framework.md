# PayOrFix — Analytical Framework

## Business Question

> For each department, is employee attrition primarily associated with compensation variables or structural workplace variables, and does the dominant pattern differ across departments?

The framework compares the profiles of employees who left with those who stayed. It separates variables related to compensation from variables related to the employee’s work environment and experience.

## Compensation Variables

These variables represent pay, financial benefits, or compensation-linked seniority:

- `MonthlyIncome` — monthly employee income

- `PercentSalaryHike` — percentage of the latest salary increase

- `StockOptionLevel` — employee stock-option level

- `JobLevel` — organizational job level

## Structural Variables

These variables represent workload, employee experience, satisfaction, involvement, and travel requirements:

```python
Structural = [
    'OverTime_bin',
    'WorkLifeBalance',
    'JobSatisfaction',
    'EnvironmentSatisfaction',
    'RelationshipSatisfaction',
    'JobInvolvement',
    'BusinessTravel_ord'
]
```

- `OverTime_bin` — overtime status encoded for analysis
- `WorkLifeBalance` — employee work-life balance score
- `JobSatisfaction` — satisfaction with the job
- `EnvironmentSatisfaction` — satisfaction with the work environment
- `RelationshipSatisfaction` — satisfaction with workplace relationships
- `JobInvolvement` — level of involvement in the job
- `BusinessTravel_ord` — business-travel category encoded as an ordinal value

## Testable Hypotheses

### Hypothesis 1 — Sales Attrition Is Primarily Structural

Attrition in the Sales department is mostly driven by structural variables rather than compensation variables.

### Hypothesis 2 — R&D Attrition Is Related to Satisfaction and Involvement

Attrition in the Research & Development department is driven primarily by satisfaction and involvement-related structural variables.

### Hypothesis 3 — The Pay Gap Between Stayers and Leavers Is Small

The compensation gap between employees who stayed and employees who left will be small, indicating that structural conditions are more strongly associated with attrition than paychecks.

## Analytical Comparison

The hypotheses will be assessed by comparing compensation and structural variables between leavers and stayers, with department-level comparisons used where specified by the hypotheses.

The framework defines the variables and hypotheses before analysis. It does not establish causal relationships or conclusions in advance.
