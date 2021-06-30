class Portfolio < ApplicationRecord
    belongs_to :venue
    belongs_to :user

    has_one_attached :img

end
