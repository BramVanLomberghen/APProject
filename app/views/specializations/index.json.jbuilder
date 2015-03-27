json.array!(@specializations) do |specialization|
  json.extract! specialization, :id, :name, :abbreviation
  json.url specialization_url(specialization, format: :json)
end
