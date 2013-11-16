json.array!(@floors) do |floor|
  json.extract! floor, :level
  json.url floor_url(floor, format: :json)
end
