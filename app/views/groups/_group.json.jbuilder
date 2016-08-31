json.extract! group, :id, :title, :description, :slug, :image, :enabled, :created_at, :updated_at
json.url group_url(group, format: :json)