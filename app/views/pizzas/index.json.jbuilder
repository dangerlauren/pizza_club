json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :latitude, :longitude, :address, :description, :title
  json.url pizza_url(pizza, format: :json)
end
