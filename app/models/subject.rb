class Subject < ActiveRecord::Base
  belongs_to :subjectm
  belongs_to :semester
end
