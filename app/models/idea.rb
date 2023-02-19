class Idea < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates_presence_of :name,:description
  mount_uploader :picture, PictureUploader
end
