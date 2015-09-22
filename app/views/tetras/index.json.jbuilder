json.array!(@tetras) do |tetra|
  json.extract! tetra, :id, :issi, :dispositivo_id
  json.url tetra_url(tetra, format: :json)
end
