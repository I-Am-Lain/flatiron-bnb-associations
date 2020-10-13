class Listing < ApplicationRecord
    belongs_to :host, :class_name => "User"
    belongs_to :neighborhood
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations

    # def guests
    #     Reservation.all.map do |r|
    #         if r.listing_id == self.id
    #             r.guest
    #         end
    #     end
    # end
end
