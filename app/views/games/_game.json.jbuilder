json.extract! game, :id, :name, :description, :price, :studio_id, :genre_id, :created_at, :updated_at
json.url game_url(game, format: :json)
