SELECT
    {{ dbt_utils.generate_surrogate_key(['agency']) }} AS agency_id,
    agency_name as agency,
    agency as agency_acronym
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE agency IS NOT NULL 
    AND agency_name IS NOT NULL


