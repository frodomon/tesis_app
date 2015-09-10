json.array!(@contrasenhas) do |contrasenha|
  json.extract! contrasenha, :id, :contrasenha, :fecCreacion, :fecVencimiento
  json.url contrasenha_url(contrasenha, format: :json)
end
