class Course < ActiveRecord::Base
  belongs_to :specialization
  has_many :student_exams
end
