json.extract! book, :id, :title, :description, :slug, :active, :created_at, :updated_at
json.url book_url(book, format: :json)