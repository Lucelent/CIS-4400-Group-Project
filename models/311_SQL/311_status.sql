SELECT
    {{ dbt_utils.generate_surrogate_key(['status']) }} AS status_id, 
    status
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE status IS NOT NULL
