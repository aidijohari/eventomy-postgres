class Venue < ApplicationRecord
  belongs_to :user

  validates :type, presence: true
  validates :accomodate, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :active, presence: true

end
