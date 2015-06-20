json.array!(@finishes) do |finish|
  json.extract! finish, :id
  json.url finish_url(finish, format: :json)
end
