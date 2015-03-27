class Supervision < ActiveRecord::Base
  belongs_to :classroom
  belongs_to :exam_period
  belongs_to :supervisor
  has_many :student_exams
end
