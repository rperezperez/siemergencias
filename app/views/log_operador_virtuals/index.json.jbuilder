json.array!(@log_operador_virtuals) do |log_operador_virtual|
  json.extract! log_operador_virtual, :id, :operador_virtual_id, :tipo, :mensaje, :fecha
  json.url log_operador_virtual_url(log_operador_virtual, format: :json)
end
