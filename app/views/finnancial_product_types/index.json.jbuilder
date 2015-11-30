json.array!(@finnancial_product_types) do |finnancial_product_type|
  json.extract! finnancial_product_type, :id, :name
  json.url finnancial_product_type_url(finnancial_product_type, format: :json)
end
