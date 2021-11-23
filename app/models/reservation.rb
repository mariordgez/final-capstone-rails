class Reservation < ApplicationRecord
  validates :user_id, :car_id, :city, :date, length: { maximum: 20 }
end
