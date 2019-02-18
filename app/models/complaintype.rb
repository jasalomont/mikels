class Complaintype < ApplicationRecord
  # Direct associations
has_many :complains, :dependent => :nullify
  # Indirect associations

  # Validations

end
