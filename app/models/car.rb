class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  validates :price, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :address, presence: true
  validates :description, presence: true
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_address, against: :address,
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
