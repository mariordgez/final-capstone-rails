class Car < ApplicationRecord
  validates :name, :brand, :model, :price, presence: true, length: { maximum: 20 }
  validates :image_url, uniqueness: true, format: { with: %r{\Ahttps*://.+\z}, message: 'Not a valid image URL.' }
  validates :removed, inclusion: [false]
  has_many :reservations
end
