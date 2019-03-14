class Department < ApplicationRecord
  # Direct associations
    has_many :orgcharts, :dependent => :destroy
  # Indirect associations
    has_many :salsterrs, :through => :orgcharts, :source => :salsterr
  # Validations

end
