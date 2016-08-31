json.extract! post, :id, :user_id, :story_id, :title, :body, :image, :slug, :visible, :poster_ip, :created_at, :updated_at
json.url post_url(post, format: :json)