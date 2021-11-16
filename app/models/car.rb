class Car < ApplicationRecord
  validates :name, :brand, :price, presence: true, length: { maximum: 20 }
  validates :model, uniqueness: true, length: { maximum: 20 }
  validates :image_url, format: { with: %r{\Ahttps*://.+\z}, message: 'Not a valid image URL.' }
  validates :removed, inclusion: [false]
  has_many :reservations
end
