class Salsterr < ApplicationRecord
  # Direct associations
  has_many :profiles
  has_one :orgchart, :dependent => :destroy
  # Indirect associations
  has_one :department, :through => :orgchart, :source => :department
  # Validations

end
