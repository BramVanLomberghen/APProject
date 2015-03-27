json.array!(@classroom_types) do |classroom_type|
  json.extract! classroom_type, :id, :name, :abbreviation, :description
  json.url classroom_type_url(classroom_type, format: :json)
end
