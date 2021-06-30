class Venue < ApplicationRecord
  belongs_to :user
  has_many :portfolio, dependent: :delete_all #deleting association still has problems

  #FOR VENUES SELECT2
  def formatted_venue_select
    "#{listing_name} #{id}"
  end

  has_many_attached  :image

  validates :venue_type, presence: true
  validates :seated, presence: true
  validates :standing, presence: true
  validates :listing_name, presence: false
  validates :summary, presence: false
  validates :address, presence: false
  validates :price, presence: false
  validates :active, presence: false

  geocoded_by :address
  after_validation :geocode, if: :address_changed? 
  before_save :geocode, if: ->(venue){ venue.address.present? }

end
