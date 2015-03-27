class Classroom < ActiveRecord::Base
  has_one :supervision
  belongs_to :classroom_type
end
