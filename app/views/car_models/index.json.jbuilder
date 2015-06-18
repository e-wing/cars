json.array!(@car_models) do |car_model|
  json.extract! car_model, :id
  json.url car_model_url(car_model, format: :json)
end
