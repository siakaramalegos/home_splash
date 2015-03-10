json.array!(@locations) do |location|
  json.extract! location, :id, :user_id, :zip, :city, :state
  json.url location_url(location, format: :json)
end
