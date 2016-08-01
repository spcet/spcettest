json.extract! attendance_master, :id, :semester_id, :date, :today, :subject, :total, :created_at, :updated_at
json.url attendance_master_url(attendance_master, format: :json)