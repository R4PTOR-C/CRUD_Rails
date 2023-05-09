class Produto < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  validates :preco, presence: true
end
