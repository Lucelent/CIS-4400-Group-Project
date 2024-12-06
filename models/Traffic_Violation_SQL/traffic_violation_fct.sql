SELECT
    {{ dbt_utils.generate_surrogate_key(['issuing_agency']) }} AS agency_id,
    {{ dbt_utils.generate_surrogate_key(['issue_date','violation_time']) }} AS datetime_id,
    {{ dbt_utils.generate_surrogate_key(['precinct','county']) }} AS location_id,
    {{ dbt_utils.generate_surrogate_key(['violation_status']) }} AS status_id,
    {{ dbt_utils.generate_surrogate_key(['violation']) }} AS violation_id,
    payment_amount as fine_amount
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
WHERE issuing_agency IS NOT NULL
  AND issue_date IS NOT NULL
  AND violation_time IS NOT NULL
  AND precinct IS NOT NULL
  AND county IS NOT NULL
  AND violation_status IS NOT NULL
  AND violation IS NOT NULL
  AND payment_amount IS NOT NULL
