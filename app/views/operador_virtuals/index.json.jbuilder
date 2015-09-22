json.array!(@operador_virtuals) do |operador_virtual|
  json.extract! operador_virtual, :id, :user_id, :descripcion
  json.url operador_virtual_url(operador_virtual, format: :json)
end
