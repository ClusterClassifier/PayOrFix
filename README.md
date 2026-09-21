# PayOrFix

## Is Your Attrition Problem a Paycheck Problem or a People Problem?

- **Domain:** HR / People Analytics
- **Dataset:** IBM HR Analytics Employee Attrition & Performance — 1,470 employee records and 35 original columns.
- **License:** CC0 1.0 Universal

## Business Question

> For each department, is attrition primarily driven by compensation variables or structural variables — and does the answer differ meaningfully across departments?

## Tools Used

- **Python:** End-to-end data preparation, encoding, exploratory analysis, gap calculations, classification, and visualisation.
- **Pandas:** Data loading, cleaning, grouping, aggregation, and leaver-versus-stayer comparisons.
- **NumPy:** Numerical transformations and rule-based department classification.
- **Matplotlib:** Custom analytical charts and department-level visual outputs.
- **Seaborn:** Heatmap and statistical visualisation support.
- **Scikit-learn:** Normalisation of department-level gaps for comparable visual analysis.
- **Jupyter Notebook:** Reproducible execution of the raw-data wrangling and cleaned-data analysis workflows.
- **SQL:** Data-profile commands for inspecting the processed analytical data.
- **Power BI:** Interactive dashboard for communicating KPIs, department comparisons, and diagnostic findings.
- **DAX:** Measures and calculated logic used within the Power BI dashboard.
- **Git/GitHub:** Project versioning, documentation, and portfolio presentation.

## Strong Findings

- **Sales attrition is strongly associated with structural pressure, especially overtime; business travel is another important signal.** Retention signals include stock options and job involvement.
- **R&D attrition is also strongly connected to overtime and business travel, but the pattern is not identical to Sales.** The same intervention should not automatically be applied to both departments.
- **The diagnostic separates compensation-related signals from structural signals**, helping HR choose between pay-related action and workplace/job-design action.
- **The central management risk is misdiagnosis:** a salary intervention is unlikely to solve attrition when the strongest department-level gaps are structural.

## Project Overview

- PayOrFix is a department-level attrition diagnostic built around the difference between employees who left and employees who stayed.
- The analysis treats attrition as a business problem requiring a targeted intervention rather than a single company-wide explanation.
- The project compares actionable compensation variables with actionable structural variables.
- The analysis is based on a cross-sectional employee snapshot; it identifies associations and diagnostic signals, not causal proof.

## Analytical Framework

### Compensation Variables

- `MonthlyIncome` — absolute pay level.
- `PercentSalaryHike` — most recent salary increase.
- `StockOptionLevel` — stock-option level.
- `JobLevel` — employee seniority level.

### Structural Variables

- `OverTime` / `OverTime_bin` — workload pressure.
- `WorkLifeBalance` — perceived work-life balance.
- `JobSatisfaction` — satisfaction with the job.
- `EnvironmentSatisfaction` — satisfaction with the work environment.
- `RelationshipSatisfaction` — satisfaction with workplace relationships.
- `JobInvolvement` — involvement in the work.
- `BusinessTravel` / `BusinessTravel_ord` — travel burden.

### Excluded Variables

- Tenure, age, and similar descriptive variables are not used as intervention levers in the core compensation-versus-structure diagnostic.
- Constant columns removed during cleaning include `EmployeeCount`, `Over18`, and `StandardHours`.

## Data Preparation

- The raw IBM HR dataset is stored in `data/raw/raw_data.csv`.
- Constant columns were removed because they contain no analytical variation.
- `Attrition` was converted into a binary analytical field for rate calculations.
- `OverTime` was encoded as `OverTime_bin`.
- `BusinessTravel` was encoded as `BusinessTravel_ord` using the ordered categories non-travel, rare travel, and frequent travel.
- Cleaned and normalised datasets are stored in `data/processed/`.
- Dataset validation is documented in `docs/data_validation.md`.

## Analytical Workflow

- **Raw data wrangling:** Load the raw file, remove unusable constant fields, create analytical encodings, and save the cleaned dataset.
- **Initial profiling:** Inspect column structure, value distributions, department sizes, attrition counts, and data quality.
- **Company-wide baseline:** Calculate overall attrition and department-level attrition rates.
- **Gap analysis:** Compare the mean value for leavers and stayers for every selected variable.
- **Department analysis:** Repeat the gap analysis independently for Sales, Research & Development, and Human Resources.
- **Normalisation:** Scale gaps by the maximum absolute gap within each variable so differently scaled variables can be compared visually.
- **Diagnostic classification:** Sum absolute compensation and structural gaps for each department and compare the two signals.
- **Visual communication:** Use department charts, heatmaps, correlation views, class-balance views, and department-specific gap plots.
- **Business interpretation:** Convert analytical patterns into department-level retention and intervention guidance.
- **Dashboard delivery:** Present the key measures and comparisons through Power BI.

## Headline Diagnostic

- The principal analytical object is the department-by-variable gap matrix.
- Each gap is calculated as:

  - `Leaver mean − Stayer mean`

- Positive or negative direction must be interpreted according to the variable.
- For example, a higher overtime value among leavers indicates greater workload pressure, while a lower satisfaction or income value among leavers indicates a negative gap.
- The normalised matrix makes the relative strength of signals easier to compare.
- Compensation variables and structural variables are kept visually separated in the diagnostic heatmap.

## Visual Outputs

- `plots/attrition_rate_by_department.png` — department-level attrition rate comparison.
- `plots/attrition_rate_by_years_since_last_promotion.png` — attrition pattern by years since last promotion.
- `plots/class_imbalance.png` — distribution of attrition classes.
- `plots/correlation_gap_heatmap.png` — correlation or gap-based heatmap used in the analysis.
- `plots/department-based_categorised_variables.png` — department-based variable categorisation view.
- `plots/human_resources__attrition_gap_by_variable.png` — Human Resources gap analysis.
- `plots/research_&_development__attrition_gap_by_variable.png` — Research & Development gap analysis.
- `plots/sales__attrition_gap_by_variable.png` — Sales gap analysis.

## Power BI Dashboard

- The dashboard is stored in `dashboard/payorfix_dashboard.pbix`.
- The dashboard PDF provides a static export for review.
- The dashboard video demonstrates interactive behaviour.
- The Power BI theme is stored in `dashboard/payorfix_powerbi_theme.json`.
- Dashboard descriptions and usage guidance are stored in `dashboard/dashboard_description.md`.
- The dashboard is intended to make the business question understandable through KPIs, department comparisons, and supporting diagnostic charts.

## SQL Profiling

- SQL profiling commands are stored in `sql/data_profile_commands.sql`.
- These commands support inspection of the processed analytical data and provide a database-oriented view of the project.
- SQL is used as a profiling and validation component in the repository; the main statistical diagnostic is implemented in the notebooks.

## Notebooks

- `notebooks/RawDataWrangling.ipynb` — raw-data loading, cleaning, encoding, and processed-data preparation.
- `notebooks/CleanedDataEDA.ipynb` — exploratory analysis, department comparisons, gap calculations, visualisations, and findings.

## Documentation

- `docs/analytical_framework.md` — business question, variable groups, and testable hypotheses.
- `docs/data_profile.md` — data profiling notes and structural inspection.
- `docs/data_validation.md` — column-wise validation record.
- `docs/findings.md` — detailed business findings and interpretation.

## Repository Structure

```text
PayOrFix/
├── dashboard/
│   ├── dashboard_description.md
│   ├── payorfix_dashboard_video.mp4
│   ├── payorfix_dashboard.pbix
│   ├── payorfix_dashboard.pdf
│   └── payorfix_powerbi_theme.json
├── data/
│   ├── processed/
│   │   ├── PayOrFixCleanedData.csv
│   │   └── PayOrFixNormalizedData.csv
│   └── raw/
│       └── raw_data.csv
├── docs/
│   ├── analytical_framework.md
│   ├── data_profile.md
│   ├── data_validation.md
│   └── findings.md
├── notebooks/
│   ├── CleanedDataEDA.ipynb
│   └── RawDataWrangling.ipynb
├── plots/
│   ├── attrition_rate_by_department.png
│   ├── attrition_rate_by_years_since_last_promotion.png
│   ├── class_imbalance.png
│   ├── correlation_gap_heatmap.png
│   ├── department-based_categorised_variables.png
│   ├── human_resources__attrition_gap_by_variable.png
│   ├── research_&_development__attrition_gap_by_variable.png
│   └── sales__attrition_gap_by_variable.png
├── sql/
│   └── data_profile_commands.sql
├── README.md
└── requirements.txt
```

## How to Use the Project

- Place the repository in a Python environment with the dependencies listed in `requirements.txt`.
- Run `RawDataWrangling.ipynb` first to reproduce the cleaning and processed data files.
- Run `CleanedDataEDA.ipynb` next to reproduce the analytical tables and plots.
- Review `docs/findings.md` for the business interpretation.
- Open the `.pbix` file in Power BI Desktop to explore the interactive dashboard.

## Limitations

- The dataset is a snapshot rather than a longitudinal employee history.
- The results describe associations and diagnostic signals; they do not establish that a variable directly causes attrition.
- Department sample sizes differ, so findings for smaller departments should be interpreted with greater caution.
- The gap method compares group means and does not control for every possible confounding factor.
- The project should support HR investigation and prioritisation, not replace managerial or employee-level context.

## License

- This project is released under the **CC0 1.0 Universal** license.
