json.array!(@ios) do |io|
  json.extract! io, :id, :device_token, :dispositivo_id
  json.url io_url(io, format: :json)
end
