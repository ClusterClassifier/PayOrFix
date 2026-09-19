# PayOrFix — Data Profile

## Dataset Information

- **Dataset:** IBM HR Analytics Employee Attrition & Performance
- **Source:** [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- **Dataset size:** 1,470 records and 35 columns
- **Age range:** 18–60 years
- **Number of departments:** 3
- **Departments:** Sales, Human Resources, and Research & Development
- **Number of business-travel types:** 3
- **Business-travel types:** Travel Frequently, Travel Rarely, and Non-Travel

## Profiling Method

- Initial data profiling was performed using the **BigQuery Sandbox**.
- SQL commands were used to calculate record counts, ranges, categories, attrition counts, and average values.
- The profiling commands are documented in `data_profile_commands.sql`.
- The dataframe structure and data-quality checks were validated separately.

## Dataset Structure

### Integer Columns

- `Age`
- `DailyRate`
- `DistanceFromHome`
- `Education`
- `EmployeeCount`
- `EmployeeNumber`
- `EnvironmentSatisfaction`
- `HourlyRate`
- `JobInvolvement`
- `JobLevel`
- `JobSatisfaction`
- `MonthlyIncome`
- `MonthlyRate`
- `NumCompaniesWorked`
- `PercentSalaryHike`
- `PerformanceRating`
- `RelationshipSatisfaction`
- `StandardHours`
- `StockOptionLevel`
- `TotalWorkingYears`
- `TrainingTimesLastYear`
- `WorkLifeBalance`
- `YearsAtCompany`
- `YearsInCurrentRole`
- `YearsSinceLastPromotion`
- `YearsWithCurrManager`

### String Columns

- `Attrition`
- `BusinessTravel`
- `Department`
- `EducationField`
- `Gender`
- `JobRole`
- `MaritalStatus`
- `Over18`
- `OverTime`

## Data-Quality Checks

- **Missing values:** No missing values were found. All 35 columns contain 1,470 non-null records.
- **Duplicate records:** No duplicate records were found.
- **Record-count validation:** The table was confirmed to contain 1,470 records.
- **Categorical profiling:** Distinct-value checks were performed for categorical columns. The key category counts documented above are 3 departments and 3 business-travel types.
- **Range validation:** Range checks were completed for essential columns, including the employee age range of 18–60 years.
- **Attrition validation:** The attrition field was checked as a binary status field.
- **Overtime validation:** The overtime field was checked as a binary status field.

## Attrition Profile

- **Leavers:** 237
- **Stayers:** 1,233
- **Employees working overtime who stayed:** 289
- **Employees working overtime who left:** 127

## Average Values

- **Daily rate:** $802
- **Environment satisfaction:** 3
- **Job involvement:** 3
- **Job satisfaction:** 3
- **Monthly income:** $6,503
- **Salary hike percentage:** 15%
- **Total working years:** 11
- **Stock option level:** 1
- **Years at company:** 7
- **Years since last promotion:** 2

## Monthly Income by Attrition Status

- **Average income among leavers:** $4,787
- **Average income among stayers:** $6,833

## Profiling Scope

- This profile documents the dataset’s structure, completeness, validity, categories, ranges, counts, and descriptive averages.
