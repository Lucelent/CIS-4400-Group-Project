SELECT
    {{ dbt_utils.generate_surrogate_key(['complaint_type']) }} AS complaint_type_id,
    complaint_type,
    descriptor,
    open_data_channel_type
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE complaint_type IS NOT NULL
  AND descriptor IS NOT NULL
  AND open_data_channel_type IS NOT NULL