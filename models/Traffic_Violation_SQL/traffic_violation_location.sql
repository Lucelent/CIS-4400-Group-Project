SELECT
    {{ dbt_utils.generate_surrogate_key(['precinct','county']) }} AS location_id,
    precinct,
    county
FROM `cis-4400-group-project-441415.Traffic_Violation.Violation`
WHERE precinct IS NOT NULL
  AND county IS NOT NULL
