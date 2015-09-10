json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apePaterno, :apeMaterno, :distrito_id, :fecNac, :sexo, :email, :telFijo, :telMovil, :alias, :saldo
  json.url usuario_url(usuario, format: :json)
end
