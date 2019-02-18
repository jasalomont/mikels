class Profile < ApplicationRecord
  mount_uploader :profile_pic, ProfilePicUploader

  # Direct associations
belongs_to :user
  # Indirect associations

  # Validations

end
