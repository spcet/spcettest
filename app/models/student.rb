class Student < ActiveRecord::Base
  belongs_to :dept
  belongs_to :batch
  belongs_to :user
  has_many :attendances
end
