class Attendance < ActiveRecord::Base
  belongs_to :semester
  belongs_to :student
end
