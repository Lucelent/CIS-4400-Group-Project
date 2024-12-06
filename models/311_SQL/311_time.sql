SELECT
    {{ dbt_utils.generate_surrogate_key(['created_date', 'closed_date']) }} AS datetime_id,
    EXTRACT(HOUR FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', created_date)) AS complaint_created_hour,
    EXTRACT(MINUTE FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', created_date)) AS complaint_created_minute,
    EXTRACT(HOUR FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', closed_date)) AS complaint_closed_hour,
    EXTRACT(MINUTE FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', closed_date)) AS complaint_closed_minute
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE created_date IS NOT NULL
  AND closed_date IS NOT NULL
