class Venue < ApplicationRecord
  belongs_to :user

  has_one_attached  :image

  validates :venue_type, presence: true
  validates :accommodate, presence: true
  # validates :listing_name, presence: true
  # validates :summary, presence: true
  # validates :address, presence: true
  # validates :price, presence: true
  # validates :active, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed? 

end
