json.extract! character, :id, :user_id, :group_id, :name, :biography, :avatar, :signature, :title, :tag_line, :slug, :active, :created_at, :updated_at
json.url character_url(character, format: :json)