json.array!(@usuario_x_contrasenhas) do |usuario_x_contrasenha|
  json.extract! usuario_x_contrasenha, :id, :usuario_id, :contrasenha_id
  json.url usuario_x_contrasenha_url(usuario_x_contrasenha, format: :json)
end
