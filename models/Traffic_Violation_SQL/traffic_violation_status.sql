SELECT
    {{ dbt_utils.generate_surrogate_key(['violation_status']) }} AS status_id,
    violation_status
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
WHERE violation_status IS NOT NULL
