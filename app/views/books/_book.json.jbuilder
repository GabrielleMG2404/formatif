json.extract! book, :id, :titre, :date_de_sortie, :auteur, :pages, :genre, :created_at, :updated_at
json.url book_url(book, format: :json)
