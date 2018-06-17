class Card < ApplicationRecord
  acts_as_list scope: :list

  belongs_to :list
  belongs_to :listing

  validates :listing_id, presence: true
end
