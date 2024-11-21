SELECT
    {{ dbt_utils.generate_surrogate_key(['issuing_agency']) }} AS agency_id,
    {{ dbt_utils.generate_surrogate_key(['issue_date','violation_time']) }} AS datetime_id,
    {{ dbt_utils.generate_surrogate_key(['precinct','county']) }} AS location_id,
    {{ dbt_utils.generate_surrogate_key(['violation_status']) }} AS status_id,
    {{ dbt_utils.generate_surrogate_key(['violation']) }} AS violation_id,
    payment_amount as fine_amount
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`