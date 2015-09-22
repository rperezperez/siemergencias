json.array!(@dispositivos) do |dispositivo|
  json.extract! dispositivo, :id, :usuario_id, :codigo, :descripcion
  json.url dispositivo_url(dispositivo, format: :json)
end
