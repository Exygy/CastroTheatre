json.array!(@rooms) do |room|
  json.extract! room, :name, :number
  json.url room_url(room, format: :json)
end
