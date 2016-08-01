class Classroom < ActiveRecord::Base
  belongs_to :dept
  belongs_to :batch

has_many :semesters

end
