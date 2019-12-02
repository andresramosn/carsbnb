class Reservation < ApplicationRecord
  has_many :cars
  has_many :users
end
