json.extract! genre, :id, :category_id, :story_id, :title, :description, :image, :slug, :active, :created_at, :updated_at
json.url genre_url(genre, format: :json)