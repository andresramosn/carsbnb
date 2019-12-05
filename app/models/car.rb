class Car < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  validates :price, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :address, presence: true
  validates :description, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
