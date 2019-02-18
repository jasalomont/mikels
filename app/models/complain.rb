class Complain < ApplicationRecord
  # Direct associations
  has_one :solution, :dependent => :destroy
  belongs_to :department, :required => false
  belongs_to :complaintype
  belongs_to :user
  # Indirect associations

  # Validations

end
