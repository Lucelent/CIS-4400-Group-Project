SELECT
    {{ dbt_utils.generate_surrogate_key(['incident_zip', 'borough', 'city', 'street_name', 'cross_street_1', 'cross_street_2']) }} AS location_id,
    incident_zip as zipcode,
    city,
    borough,
    street_name,
    cross_street_1,
    cross_street_2
FROM `cis-4400-group-project-441415.311_Noise_Complaint.Complaint`
