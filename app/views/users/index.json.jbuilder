json.array!(@users) do |user|
  json.extract! user, :id, :name, :lastName, :ubigeo_id, :birthDate, :genre, :email, :phone, :mobile, :alias, :balance
  json.url user_url(user, format: :json)
end
