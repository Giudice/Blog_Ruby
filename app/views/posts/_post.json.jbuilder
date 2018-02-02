json.extract! post, :id, :titre, :date, :chapeau, :vignette, :nomAuteur, :created_at, :updated_at
json.url post_url(post, format: :json)
