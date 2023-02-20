class Idea < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates_presence_of :name,:description
  mount_uploader :picture, PictureUploader
end
