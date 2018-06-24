json.extract! user, :id, :nom, :prenom, :age, :contry, :addresse, :sexe, :created_at, :updated_at
json.url user_url(user, format: :json)
