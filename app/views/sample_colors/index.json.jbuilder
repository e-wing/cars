json.array!(@sample_colors) do |sample_color|
  json.extract! sample_color, :id
  json.url sample_color_url(sample_color, format: :json)
end
