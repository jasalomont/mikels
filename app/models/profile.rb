class Profile < ApplicationRecord
  mount_uploader :profile_pic, ProfilePicUploader

  # Direct associations
belongs_to :user
belongs_to :salsterr

  # Indirect associations

  # Validations

end
