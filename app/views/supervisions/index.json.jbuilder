json.array!(@supervisions) do |supervision|
  json.extract! supervision, :id, :start, :end, :supervisor_exams_id, :classroom_id, :exam_period_id
  json.title supervision.supervisor.name
  json.start supervision.start
  json.end supervision.end
  json.url supervision_url(supervision, format: :html)
end
