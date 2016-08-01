json.extract! attendance, :id, :semester_id, :student_id, :date, :subject, :attended, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)