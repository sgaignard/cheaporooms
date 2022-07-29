class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy

  validates :capacity, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :price_per_night, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
