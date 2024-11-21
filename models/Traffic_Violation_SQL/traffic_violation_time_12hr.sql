SELECT
    {{ dbt_utils.generate_surrogate_key(['issue_date','violation_time']) }} AS datetime_id, 
    REGEXP_EXTRACT(violation_time, r'(\d{2}):') AS violation_hour,
    REGEXP_EXTRACT(violation_time, r':(\d{2})') AS violation_minute,
    REGEXP_EXTRACT(violation_time, r'(\D)$') AS violation_am_pm
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`