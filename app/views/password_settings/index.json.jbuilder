json.array!(@password_settings) do |password_setting|
  json.extract! password_setting, :id, :minLength, :minLetters, :minNumbers, :duration, :maxLoginFails
  json.url password_setting_url(password_setting, format: :json)
end
