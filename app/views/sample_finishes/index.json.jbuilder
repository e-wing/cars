json.array!(@sample_finishes) do |sample_finish|
  json.extract! sample_finish, :id
  json.url sample_finish_url(sample_finish, format: :json)
end
