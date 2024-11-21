SELECT
    {{ dbt_utils.generate_surrogate_key(['violation']) }} AS violation_id,
    violation
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
