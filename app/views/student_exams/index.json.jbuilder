json.array!(@student_exams) do |student_exam|
  json.extract! student_exam, :id, :student_id, :course_id, :supervision_id, :start, :end, :present
  json.url student_exam_url(student_exam, format: :json)
end
