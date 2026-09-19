PayOrFix — BigQuery Data Profiling Commands
============================================

Purpose
-------
These SQL commands were used during the initial data-profiling stage of the
PayOrFix project in the BigQuery Sandbox. They describe the dataset structure,
basic categories, record counts, and selected average values.

Source table
------------
`payorfix.payorfix_rawdata.main_table`


1. Count all records
--------------------
-- Checks the total number of records in the dataset.

select COUNT(*)
from `payorfix.payorfix_rawdata.main_table`


2. Identify the age range
-------------------------
-- Returns the minimum and maximum employee ages.

select MIN(Age), MAX(Age)
from `payorfix.payorfix_rawdata.main_table`


3. List department categories
----------------------------
-- Shows the distinct departments represented in the dataset.

select DISTINCT Department
from `payorfix.payorfix_rawdata.main_table`


4. List business-travel categories
----------------------------------
-- Shows the distinct business-travel categories in the dataset.

select DISTINCT BusinessTravel
from `payorfix.payorfix_rawdata.main_table`


5. Calculate average DailyRate
-----------------------------
-- Calculates the rounded average DailyRate for all employees.

select ROUND(AVG(DailyRate)) AS AvgDailyRate
from `payorfix.payorfix_rawdata.main_table`


6. Count employees who left
---------------------------
-- Counts records where Attrition is True.

select COUNT(*) AS Leavers
from `payorfix.payorfix_rawdata.main_table`
where Attrition = True;


7. Count employees who stayed
-----------------------------
-- Counts records where Attrition is False.

select COUNT(*) AS Stayers
from `payorfix.payorfix_rawdata.main_table`
where Attrition = False;


8. Calculate average EnvironmentSatisfaction
--------------------------------------------
-- Calculates the rounded average environment-satisfaction score.

select ROUND(AVG(EnvironmentSatisfaction)) AS AvgEnvSatisfaction
from `payorfix.payorfix_rawdata.main_table`;


9. Calculate average JobInvolvement
-----------------------------------
-- Calculates the rounded average job-involvement score.

select ROUND(AVG(JobInvolvement)) AS AvgJobInvolvement
from `payorfix.payorfix_rawdata.main_table`;


10. Calculate average JobSatisfaction
------------------------------------
-- Calculates the rounded average job-satisfaction score.

select ROUND(AVG(JobSatisfaction)) AS AvgJobSatisfaction
from `payorfix.payorfix_rawdata.main_table`;


11. Calculate average MonthlyIncome
----------------------------------
-- Calculates the rounded average monthly income.

select ROUND(AVG(MonthlyIncome)) AS AvgMonthlyIncome
from `payorfix.payorfix_rawdata.main_table`;


12. Count overtime employees by attrition status
------------------------------------------------
-- Counts employees working overtime and groups them by Attrition status.

select Attrition, (COUNT(*)) AS Overtime
from `payorfix.payorfix_rawdata.main_table`
WHERE OverTime = True
GROUP BY Attrition;


13. Calculate average salary-hike percentage
--------------------------------------------
-- Calculates the rounded average PercentSalaryHike.

select ROUND(AVG(PercentSalaryHike)) AS AvgSalaryHike
from `payorfix.payorfix_rawdata.main_table`;


14. Calculate average total working years
-----------------------------------------
-- Calculates the rounded average TotalWorkingYears.

select ROUND(AVG(TotalWorkingYears)) AS AvgWorkingYears
from `payorfix.payorfix_rawdata.main_table`;


15. Calculate average StockOptionLevel
-------------------------------------
-- Calculates the rounded average StockOptionLevel.

select ROUND(AVG(StockOptionLevel)) AS AvgStockOptionLevel
from `payorfix.payorfix_rawdata.main_table`;


16. Calculate average YearsAtCompany
-----------------------------------
-- Calculates the rounded average number of years employees have been at the company.

select ROUND(AVG(YearsAtCompany)) AS AvgYearsAtCompany
from `payorfix.payorfix_rawdata.main_table`;


17. Calculate average YearsSinceLastPromotion
---------------------------------------------
-- Calculates the rounded average number of years since the last promotion.

select ROUND(AVG(YearsSinceLastPromotion)) AS AvgYearsSinceLastPromotion
from `payorfix.payorfix_rawdata.main_table`;


18. Calculate average MonthlyIncome by attrition status
-------------------------------------------------------
-- Calculates average monthly income separately for leavers and stayers.

select Attrition, ROUND(AVG(MonthlyIncome)) AS AvgMonthlyIncome
from `payorfix.payorfix_rawdata.main_table`
GROUP BY Attrition;
