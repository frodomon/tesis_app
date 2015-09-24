json.array!(@passwords) do |password|
  json.extract! password, :id, :password, :dueDate
  json.url password_url(password, format: :json)
end
