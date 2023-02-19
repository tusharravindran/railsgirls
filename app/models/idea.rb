class Idea < ApplicationRecord
  has_many :comments
  validates_presence_of :name,:description
  mount_uploader :picture, PictureUploader
end
