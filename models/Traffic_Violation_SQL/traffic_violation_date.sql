SELECT
    {{ dbt_utils.generate_surrogate_key(['issue_date','violation_time']) }} AS datetime_id,
    EXTRACT(Year FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_year,
    EXTRACT(MONTH FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_month,
    EXTRACT(DAY FROM PARSE_DATE("%m/%d/%Y", issue_date)) AS violation_day
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
WHERE issue_date IS NOT NULL
  AND violation_time IS NOT NULL
