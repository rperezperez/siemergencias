json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :user_id, :telefono, :nombre, :email, :codigo
  json.url usuario_url(usuario, format: :json)
end
