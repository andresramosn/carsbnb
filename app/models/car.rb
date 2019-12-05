class Car < ApplicationRecord
  belongs_to :user
  has_many :reservations
  mount_uploader :photo, PhotoUploader
  validates :price, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
