json.array!(@centros) do |centro|
  json.extract! centro, :id, :codigo, :nombre
  json.url centro_url(centro, format: :json)
end
