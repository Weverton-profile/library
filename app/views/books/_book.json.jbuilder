json.extract! book, :id, :book_name, :description, :url_image, :rating, :created_at, :updated_at
json.url book_url(book, format: :json)
