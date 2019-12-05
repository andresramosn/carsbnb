class Reservation < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :status, inclusion: { in: ["pending", "confirmed", "rejected", "cancelled"] }
end
