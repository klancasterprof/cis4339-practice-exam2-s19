json.extract! task, :id, :name, :description, :time_required, :job_id, :created_at, :updated_at
json.url task_url(task, format: :json)
