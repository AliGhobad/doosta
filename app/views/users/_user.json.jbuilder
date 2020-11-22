json.extract! user, :id, :first_name, :last_name, :username, :email, :phone, :email_verified_at, :photo, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
