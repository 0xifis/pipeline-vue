class Listing < ApplicationRecord
  has_one :card

  after_create :create_card

  private

  def create_card
    list = List.where(position: 1).first
    list.cards.create({
      listing_id: id
    })
  end
end
