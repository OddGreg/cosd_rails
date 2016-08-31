json.extract! category, :id, :book_id, :title, :description, :slug, :image, :visible, :created_at, :updated_at
json.url category_url(category, format: :json)