SELECT
    {{ dbt_utils.generate_surrogate_key(['issue_date','violation_time']) }} AS datetime_id, 
  CASE
    WHEN REGEXP_EXTRACT(violation_time, r'(\D)$') = 'P' THEN 
      CAST(REGEXP_EXTRACT(violation_time, r'(\d{2}):') AS INT64) + 12
    ELSE 
      CAST(REGEXP_EXTRACT(violation_time, r'(\d{2}):') AS INT64)
  END AS violation_hour,
  REGEXP_EXTRACT(violation_time, r':(\d{2})') AS violation_minute
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
WHERE issue_date IS NOT NULL
  AND violation_time IS NOT NULL
