json.extract! story, :id, :section_id, :user_id, :title, :description, :slug, :active, :created_at, :updated_at
json.url story_url(story, format: :json)