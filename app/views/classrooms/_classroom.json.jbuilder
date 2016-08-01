json.extract! classroom, :id, :name, :dept_id, :batch_id, :completed, :created_at, :updated_at
json.url classroom_url(classroom, format: :json)