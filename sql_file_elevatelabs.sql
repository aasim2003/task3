CREATE DATABASE bankanalytics;
show tables;
# State-Wise Loan Distribution
SELECT `State Name`, SUM(`Loan Amount`) AS `Total Loan Amount`
FROM ms_csv_sql
GROUP BY `State Name`
ORDER BY `Total Loan Amount` DESC;

# Religion-Wise Loan Distribution
SELECT Religion, SUM(`Loan Amount`) AS `Total Loan Amount`
FROM ms_csv_sql
GROUP BY Religion
ORDER BY `Total Loan Amount` DESC;

# Default loan count
SELECT COUNT(*) AS `Default Loan Count`
FROM ms_csv_sql
WHERE `Is Default Loan` = 'Y';

# total loans count
SELECT COUNT(*) AS `Total Loans`
FROM ms_csv_sql;

# loans whose amounts are greater than the average loan amount
SELECT `Loan Amount`, `Client Name`, `State Name`
FROM ms_csv_sql
WHERE `Loan Amount` > (SELECT AVG(`Loan Amount`) FROM ms_csv_sql);

# states where the loan amount is greater than 10000
SELECT `Loan Amount`, `Client Name`, `State Name`
FROM ms_csv_sql
WHERE `State Name` IN (SELECT `State Name` FROM ms_csv_sql WHERE `Loan Amount` > 10000);









