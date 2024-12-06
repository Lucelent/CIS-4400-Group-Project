SELECT
    {{ dbt_utils.generate_surrogate_key(['created_date', 'closed_date']) }} AS datetime_id,
    EXTRACT(YEAR FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', created_date)) AS complaint_created_year,
    EXTRACT(MONTH FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', created_date)) AS complaint_created_month,
    EXTRACT(DAY FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', created_date)) AS complaint_created_day,
    EXTRACT(YEAR FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', closed_date)) AS complaint_closed_year,
    EXTRACT(MONTH FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', closed_date)) AS complaint_closed_month,
    EXTRACT(DAY FROM PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', closed_date)) AS complaint_closed_day
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
WHERE created_date IS NOT NULL
  AND closed_date IS NOT NULL
