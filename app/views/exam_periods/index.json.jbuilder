json.array!(@exam_periods) do |exam_period|
  json.extract! exam_period, :id, :name, :start, :end
  json.url exam_period_url(exam_period, format: :json)
end
