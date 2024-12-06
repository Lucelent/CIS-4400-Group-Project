SELECT
{{ dbt_utils.generate_surrogate_key(['agency']) }} AS agency_id,
{{ dbt_utils.generate_surrogate_key(['complaint_type']) }} AS complaint_type_id,
{{ dbt_utils.generate_surrogate_key(['created_date', 'closed_date']) }} AS datetime_id,
{{ dbt_utils.generate_surrogate_key(['incident_zip', 'borough', 'city', 'street_name', 'cross_street_1', 'cross_street_2']) }} AS location_id,
{{ dbt_utils.generate_surrogate_key(['status']) }} AS status_id 
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE agency IS NOT NULL
  AND complaint_type IS NOT NULL
  AND created_date IS NOT NULL
  AND closed_date IS NOT NULL
  AND incident_zip IS NOT NULL
  AND borough IS NOT NULL
  AND city IS NOT NULL
  AND street_name IS NOT NULL
  AND cross_street_1 IS NOT NULL
  AND cross_street_2 IS NOT NULL
  AND status IS NOT NULL
