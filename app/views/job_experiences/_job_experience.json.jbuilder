json.extract! job_experience, :id, :company_name, :company_address, :company_phone, :job_title, :start_date, :end_date, :job_description, :reason_of_resignation, :profile_id, :created_at, :updated_at
json.url job_experience_url(job_experience, format: :json)
