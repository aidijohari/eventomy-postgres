class Venue < ApplicationRecord
  belongs_to :user
  has_many :portfolio

  #FOR VENUES SELECT2
  def formatted_venue_select
    "#{listing_name} #{id}"
  end

  has_many_attached  :image

  validates :venue_type, presence: true
  validates :seated, presence: true
  validates :standing, presence: true
  validates :listing_name, presence: true
  validates :summary, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :active, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed? 
  before_save :geocode, if: ->(venue){ venue.address.present? }

end
