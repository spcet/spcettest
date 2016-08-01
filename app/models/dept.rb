class Dept < ActiveRecord::Base


has_one :classroom
has_one :student


end
