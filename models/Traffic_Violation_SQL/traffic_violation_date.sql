SELECT
    EXTRACT(Year FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_year,
    EXTRACT(MONTH FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_month,
    EXTRACT(DAY FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_day
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
