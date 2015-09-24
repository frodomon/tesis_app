json.array!(@ubigeos) do |ubigeo|
  json.extract! ubigeo, :id, :name, :parent_id
  json.url ubigeo_url(ubigeo, format: :json)
end
