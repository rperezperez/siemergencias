json.array!(@poblacions) do |poblacion|
  json.extract! poblacion, :id, :centro_id, :nombre, :codigo, :pl, :gc, :epes
  json.url poblacion_url(poblacion, format: :json)
end
