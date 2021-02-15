json.extract! computer, :id, :user_id, :cpu_id, :gpu_id, :ram, :created_at, :updated_at
json.url computer_url(computer, format: :json)
