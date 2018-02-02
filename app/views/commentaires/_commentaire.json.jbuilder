json.extract! commentaire, :id, :contenu, :date, :post_id, :auteur, :created_at, :updated_at
json.url commentaire_url(commentaire, format: :json)
