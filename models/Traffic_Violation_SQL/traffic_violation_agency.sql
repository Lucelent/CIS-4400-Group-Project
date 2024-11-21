SELECT
    {{ dbt_utils.generate_surrogate_key(['issuing_agency']) }} AS agency_id,
   issuing_agency as agency
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
