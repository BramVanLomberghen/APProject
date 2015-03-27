json.array!(@supervisors) do |supervisor|
  json.extract! supervisor, :id, :name, :initials
  json.url supervisor_url(supervisor, format: :json)
end
