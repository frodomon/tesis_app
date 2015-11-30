json.array!(@finnancial_entity_types) do |finnancial_entity_type|
  json.extract! finnancial_entity_type, :id, :name
  json.url finnancial_entity_type_url(finnancial_entity_type, format: :json)
end
