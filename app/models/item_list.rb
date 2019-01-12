class ItemList < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates_presence_of :user
end
