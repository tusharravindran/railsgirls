class Idea < ApplicationRecord
  validates_presence_of :name,:description,:picture
  mount_uploader :picture, PictureUploader
end
