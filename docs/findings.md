# PayOrFix Findings

## Executive Summary

PayOrFix asks whether employee attrition is primarily a **paycheck problem** or a **people and workplace problem**, and whether the answer changes by department.

The analysis finds that structural factors dominate attrition in all three departments. The strongest signals are overtime and business travel. Compensation is more useful as a retention signal in R&D and HR than as an explanation for Sales attrition.

## Top Department Signals

| Department | Top attrition signals | Top retention signals | Diagnostic |
|---|---|---|---|
| Sales | 1. Overtime  2. Business Travel | 1. Stock Options  2. Job Involvement | Primarily structural |
| R&D | 1. Business Travel  2. Overtime | 1. Job Level  2. Monthly Income | Structural, with compensation supporting retention |
| HR | 1. Business Travel  2. Overtime | 1. Job Level  2. Monthly Income | Primarily structural, with compensation supporting retention |

These are leaver-versus-stayer gap signals from the exploratory analysis. They indicate association, not proof that a single factor directly causes an employee to leave.

## Department Findings and Implications

### Sales

- **Finding:** Hypothesis 1 was supported. Sales attrition is dominated by **Overtime**, followed by **Business Travel**.
- **Retention signals:** **StockOptionLevel** and **JobInvolvement** are associated with employees staying.
- **Implication:** A salary hike alone is unlikely to solve the main problem and may be a poor use of retention budget. The priority should be reducing excessive overtime and unexpected travel, supported by targeted stock-option improvements.

Sales employees may reasonably expect some travel, so the travel signal is notable because it suggests that the frequency or unpredictability of travel is exceeding expectations.

### R&D

- **Finding:** Hypothesis 2 was rejected. R&D attrition is led by **Business Travel** and **Overtime**, rather than satisfaction and involvement.
- **Retention signals:** **JobLevel** and **MonthlyIncome** are positive retention signals. Senior employees are more likely to stay, and higher income makes a meaningful difference in this department.
- **Implication:** Adding salary alone will not address the leading signals. R&D should be assessed separately from Sales, with attention to project-hour pressure, deadlines, product launches, travel expectations, and opportunities for more single-location work.

In R&D, overtime may represent extended project hours or launch pressure. That context is different from Sales and supports department-specific intervention design.

### Human Resources

- **Finding:** HR attrition is led by **Business Travel**, followed by **Overtime**.
- **Retention signals:** **JobLevel** and **MonthlyIncome** are associated with employees staying, similar to R&D.
- **Implication:** The first priorities are reducing unnecessary or unexpected travel and decreasing overtime. The travel result is noteworthy because frequent travel may not match typical HR role expectations, particularly for recruiting-focused work.

## Company-Wide Context

- The dataset is strongly imbalanced: employees who stayed outnumber employees who left by approximately 6 to 1. Department comparisons should therefore be interpreted with the size of the leaver group in mind.
- The company-wide gap analysis shows that employees who worked overtime worked approximately 30% more, on average, and were more likely to leave.
- Monthly income above approximately 6,000 is associated with staying in the company-wide comparison.
- Years since last promotion did not produce a useful attrition pattern in this analysis.
- R&D has a lower attrition rate than Sales and HR, while Sales and HR do not differ drastically.

## Hypothesis Outcomes

1. **Sales attrition is primarily structural:** Supported. The top two signals are Overtime and Business Travel.
2. **R&D attrition is driven by satisfaction and involvement:** Rejected. Business Travel and Overtime are the leading signals.
3. **The pay gap between stayers and leavers is small:** Partially supported. It is true for Sales, but false for R&D and HR, where Job Level and Monthly Income are important retention signals.

## Analytical Approach

The analysis compares the average profiles of leavers and stayers by department using a documented variable framework:

- **Compensation:** MonthlyIncome, PercentSalaryHike, StockOptionLevel, and JobLevel.
- **Structural:** OverTime, WorkLifeBalance, JobSatisfaction, EnvironmentSatisfaction, RelationshipSatisfaction, JobInvolvement, and BusinessTravel.

The department gap matrix and normalized diagnostic heatmap make the signals comparable across variables with different scales. A final classification aggregates the absolute compensation and structural gaps; structural variables dominate in each department.

## Scope and Limitations

This is a cross-sectional diagnostic based on the IBM HR Analytics Employee Attrition & Performance dataset. The findings identify useful patterns for prioritizing HR investigation, but they do not establish causation or forecast future attrition. HR is the smallest department, so its individual-level patterns may be less generalizable. Gender was excluded from the exploratory comparison because it was outside the PayOrFix lever framework and could introduce an unnecessary bias-focused interpretation.

## Conclusion

PayOrFix does not support a single company-wide salary-first response. The evidence points to a structural retention problem across departments, with different local patterns: Sales needs workload and travel changes; R&D needs project-pressure and travel changes while preserving compensation and career progression; HR needs less travel and overtime. The practical lesson is simple: diagnose the department before choosing the intervention.
