json.array!(@centro_usuarios) do |centro_usuario|
  json.extract! centro_usuario, :id, :usuario_id, :centro_id, :rol
  json.url centro_usuario_url(centro_usuario, format: :json)
end
