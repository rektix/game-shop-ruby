json.extract! configuration, :id, :user_id, :cpu_id, :gpu_id, :ram, :created_at, :updated_at
json.url configuration_url(configuration, format: :json)
