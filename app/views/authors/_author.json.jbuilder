json.extract! author, :id, :nom, :date_naissance, :pays, :created_at, :updated_at
json.url author_url(author, format: :json)
