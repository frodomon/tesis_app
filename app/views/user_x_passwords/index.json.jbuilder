json.array!(@user_x_passwords) do |user_x_password|
  json.extract! user_x_password, :id, :user_id, :password_id
  json.url user_x_password_url(user_x_password, format: :json)
end
