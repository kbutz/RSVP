json.array!(@everythings) do |everything|
  json.extract! everything, :id, :name, :friday, :friday_lodging, :ceremony, :reception, :saturday_lodging
  json.url everything_url(everything, format: :json)
end
