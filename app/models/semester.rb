class Semester < ActiveRecord::Base
  belongs_to :classroom
  has_many :attendances
    has_many :attendance_masters
        has_many :subjects
end
