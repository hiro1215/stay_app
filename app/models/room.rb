class Room < ApplicationRecord
  belongs_to :user
  has_many :reserves
  mount_uploader :image, ImageUploader
end
